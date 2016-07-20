/* Hover code to be used with APM flight stack on Quadrotor

NASA Ames REsearch Center INtelligent Systems Division
Author:Natalie Afonina
Date Last Modified: 20 July, 2016
Version: V1.0

Code modified from erlerobotics pattern follower for an APM flight stack run on Pi3
And Navio. Odroid handles AR Tag computation
*/ 

#include <ros/ros.h>
#include <mavros_msgs/OverrideRCIn.h>
#include <mavros_msgs/State.h>
#include <std_msgs/String.h> 
#include <stdio.h>
#include <iostream>
#include <math.h>
#include "geometry_msgs/PoseStamped.h"
#include <mavros_msgs/SetMode.h>
#include <apriltags/AprilTagDetections.h>
#include <mavros_msgs/CommandBool.h>
#include <single_tag_hover/tf_datatypes.h>

//stick controls in arbitrary units of flight controller
#define MINRC   1100
#define BASERC  1500
#define MAXRC   1900

//Factors for control
#define FACTOR_ROLL 10
#define FACTOR_PITCH 10
#define FACTOR_THROTTLE 10
#define FACTOR_YAW 10

// Subscriber to flight mode
ros::Subscriber mavros_state_sub;
//Subscribing to AR Tags
ros::Subscriber sub_apriltags;

// RC publisher
ros::Publisher pub;

// Time control
ros::Time prev_time;

//apriltag info
geometry_msgs::PoseStamped CurrentPoseStamped;

// Create RC msg
mavros_msgs::OverrideRCIn msg;

/*=======================================================
Variable definitions 
========================================================*/ 
// Quadrotor info
float curr_Q_X, curr_Q_Y, curr_Q_Z, curr_Q_Yaw; // Quadrotor center coordinates current
float prev_Q_X, prev_Q_Y, prev_Q_Z; // Previous quadrotor center coordinates in loop
double prev_vel_X, prev_vel_Y, prev_vel_Z; // previous quadrotor velocity 

//First AR Tag center coordinate system
//Always will be at 0,0,0 with implementation of one AR Tag 
float curr_AR_X = 0.0;
float curr_AR_Y = 0.0;
float curr_AR_Z = 0.0;  

//desired value
float des_X = 0;
float des_Y = 0;
float des_Z = 1;
float des_Yaw = 0;	//in radians
//Offset between camera and IMU
float offset_X = 0;
float offset_Y = 0;
float offset_Z = 0;

/* Can define other AR Tag coordinates here */

//commmand values to the flight controller stick  
double Roll, Pitch, Yaw, Throttle;

// Flight mode
std::string mode = "ALT_HOLD";
bool guided;
bool armed;

/* Function definitions 
======================================================== */ 


void AprilMessageReceived(const apriltags::AprilTagDetections& detectionsMsg);

void AprilMessageReceived(const apriltags::AprilTagDetections& detectionsMsg) {

    	double tmp_roll, tmp_pitch, tmp_yaw;
	//AR frame: AprilTags Frame
	//Q-frame: Quadrotor Frame
	//if an AR tag is detected then get the positions, if not, then don't, so you don't segfault
	if (&detectionsMsg.detections[0] != NULL){
		
        	
		CurrentPoseStamped.header = detectionsMsg.header;
		//pose vector of quadrotor relative to AR tags as detected by the April Tags package
		//These position coordinates have an error that needs to be corrected for, because the 
		//quadrotor yaw coordinates have an error relative to the April Tag fixed coordinate system
		//so need to correct for that error
		CurrentPoseStamped.pose.position.x = -detectionsMsg.detections[0].pose.position.x;
		CurrentPoseStamped.pose.position.y = detectionsMsg.detections[0].pose.position.y;
		CurrentPoseStamped.pose.position.z = detectionsMsg.detections[0].pose.position.z;

		CurrentPoseStamped.pose.orientation.x = detectionsMsg.detections[0].pose.orientation.x;
		CurrentPoseStamped.pose.orientation.y = detectionsMsg.detections[0].pose.orientation.y;
		CurrentPoseStamped.pose.orientation.z = detectionsMsg.detections[0].pose.orientation.z;
		CurrentPoseStamped.pose.orientation.w = detectionsMsg.detections[0].pose.orientation.w;

		tf::Quaternion quat(CurrentPoseStamped.pose.orientation.x, CurrentPoseStamped.pose.orientation.y, CurrentPoseStamped.pose.orientation.z, CurrentPoseStamped.pose.orientation.w);
		tf::Matrix3x3 m(quat);
		m.getRPY(tmp_roll, tmp_pitch, tmp_yaw); //values from quadrotor in quadrotor original coordinates (need to be corrected for)
	
		//**Converting ARTag coordinate position to Q-frame using yaw error correction
		curr_Q_X = cos(curr_Q_Yaw)*CurrentPoseStamped.pose.position.x  + sin(curr_Q_Yaw)*CurrentPoseStamped.pose.position.y + offset_X;
		curr_Q_Y = -sin(curr_Q_Yaw)*CurrentPoseStamped.pose.position.x + cos(curr_Q_Yaw)*CurrentPoseStamped.pose.position.y + offset_Y;
		curr_Q_Z = CurrentPoseStamped.pose.position.z + offset_Z;
	
		//**Calculate yaw between AR frame and Q-frame from quaternions in detectionsMsg
		//getting scalar of Yaw and converting from quarternion into ENU coordinate frame	
		curr_Q_Yaw = -tmp_yaw;

		ROS_INFO("AprilTags Detected");
        }else {
		ROS_ERROR("No AprilTags Detected");
	}	  

	//**Calculate velocity from current and previous positions and delta_time_between_calls

	// Time since last call
        double delta_time_between_calls = (ros::Time::now() - prev_time).toSec();
        prev_time = ros::Time::now();

        // Calculate velocity
        if (delta_time_between_calls < 1.0){
		prev_vel_X = (prev_Q_X - curr_Q_X)/delta_time_between_calls;
		prev_vel_Y = (prev_Q_Y - curr_Q_Y)/delta_time_between_calls;
		prev_vel_Z = (prev_Q_Z - curr_Q_Z)/delta_time_between_calls;
        } else {
		prev_vel_X = 0.0;
		prev_vel_Y = 0.0;
		prev_vel_Z = 0.0;
        }
	//print info 	
	/*char tab2[1024];
        strncpy(tab2, mode.c_str(), sizeof(tab2));
        tab2[sizeof(tab2) - 1] = 0;
        ROS_INFO("Quadrotor_Curr_Coordinates = (%f , %f) | Previous_Coordinates = (%f , %f) \n delta_time_between_calls = %fs | prev_vel_X = (%f , %f)\n Roll = %f | Pitch = %f\n Mode = %s \n", curr_Q_X, curr_Q_Y, prev_Q_X, prev_Q_Y, delta_time_between_calls, prev_vel_X, prev_vel_Y, Roll, Pitch, tab2);
	*/
	 // Error between Quadrotor coordinates and April Tag coordinates in ENU (East North Up = X Y Z)
	float ErX = 0.0;
	float ErY = 0.0;
	float ErZ = 0.0;
	float ErYaw = 0.0;
	
        prev_Q_X = curr_Q_X;
        prev_Q_Y = curr_Q_Y;
	prev_Q_Z = curr_Q_Z;	

	// Calculate the error between Quadrotor center and ARTag center
	ErX = des_X - curr_Q_X;
	ErY = des_Y - curr_Q_Y;
	ErZ = des_Z - curr_Q_Z;
	ErYaw = des_Yaw - curr_Q_Yaw; 

        // Calculate Roll, Pitch, Throttle, Yaw depending on the mode
	 if (mode == "ALT_HOLD"){
		Roll = BASERC + FACTOR_ROLL*(0.5*ErX+0.1*prev_vel_X);
		Pitch = BASERC + FACTOR_PITCH*(0.5*ErY+0.1*prev_vel_Y); 
		Throttle = BASERC + FACTOR_THROTTLE*(0.5*ErZ+0.1*prev_vel_Z);
		Yaw = BASERC + FACTOR_YAW*(0.1*ErYaw);
        } else{
		Roll = BASERC;
		Pitch = BASERC;
		Throttle = BASERC;
		Yaw = BASERC;
        }  
         
        // Limit the Roll
        if (Roll > MAXRC){
            Roll = MAXRC;
        } else if (Roll < MINRC){
            Roll = MINRC;
        }

        // Limit the Pitch
        if (Pitch > MAXRC){
            Pitch = MAXRC;
        } else if (Pitch < MINRC){
            Pitch = MINRC;
        }	
	
	  // Limit the Throttle
        if (Throttle > MAXRC){
            Throttle = MAXRC;
        } else if (Throttle < MINRC){
            Throttle = MINRC;
        }
	  // Limit the Yaw
        if (Yaw > MAXRC){
            Yaw = MAXRC;
        } else if (Yaw < MINRC){
            Yaw = MINRC;
        }	

	//Publish new values to msg.channels[] as shown below for quadrotor flight controller
        msg.channels[0] = Roll;     //Roll
        msg.channels[1] = Pitch;    //Pitch
        msg.channels[2] = Throttle;   //Throttle
        msg.channels[3] = Yaw;        //Yaw
        msg.channels[4] = 0;
        msg.channels[5] = 0;
        msg.channels[6] = 0;
        msg.channels[7] = 0;

	ROS_INFO("ROLL: %0.1f	PITCH: %0.1f	THROTTLE: %0.1f	   YAW: %0.1f", Roll, Pitch, Throttle, Yaw);

        pub.publish(msg); 
}


/*void mavrosStateCb(const mavros_msgs::StateConstPtr &msg)
{
    if(msg->mode == std::string("CMODE(0)"))
        return;
    ROS_INFO("I heard: [%s] [%d] [%d]", msg->mode.c_str(), msg->armed, msg->guided);
    mode = msg->mode;
    guided = msg->guided==128;
    armed = msg->armed==128;
}*/


int main(int argc, char **argv)
{
    ros::init(argc, argv, "image_listener");
    ros::NodeHandle nh;
    ros::NodeHandle n_apriltags;

    prev_time = ros::Time::now();
    sub_apriltags = n_apriltags.subscribe("/apriltags/detections", 1000, &AprilMessageReceived);
    //mavros_state_sub = nh.subscribe("/mavros/state", 1, mavrosStateCb);
    pub = nh.advertise<mavros_msgs::OverrideRCIn>("/mavros/rc/override", 10);;
    ros::spin();
}
