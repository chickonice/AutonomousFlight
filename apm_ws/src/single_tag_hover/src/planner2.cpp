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

float to_move_X = 0;
float to_move_Y = 0;

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
	
//**Calculate yaw between AR frame and Q-frame from quaternions in detectionsMsg
		//getting scalar of Yaw and converting from quarternion into ENU coordinate frame	
		curr_Q_Yaw = tmp_yaw;

		//**Converting ARTag coordinate position to Q-frame using yaw error correction
		curr_Q_X = cos(curr_Q_Yaw)*CurrentPoseStamped.pose.position.x  + sin(curr_Q_Yaw)*CurrentPoseStamped.pose.position.y + offset_X;
		curr_Q_Y = -sin(curr_Q_Yaw)*CurrentPoseStamped.pose.position.x + cos(curr_Q_Yaw)*CurrentPoseStamped.pose.position.y + offset_Y;

		to_move_X = -curr_Q_X;
		to_move_Y = -curr_Q_Y;

		Roll = BASERC - to_move_X;
		Pitch = BASERC + to_move_Y;				

		ROS_INFO("ROLL: %0.1f PITCH: %0.1f", Roll, Pitch);

		ROS_INFO("AprilTags Detected");
        }else {
		ROS_ERROR("No AprilTags Detected");
	}	  
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
