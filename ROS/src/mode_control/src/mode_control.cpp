#include <ros/ros.h>
#include <std_msgs/String.h> 
#include <stdio.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h> 
#include <mavros_msgs/CommandBool.h>
#include <math.h>
#include <std_msgs/String.h>
#include <mode_control/AprilTagDetections.h>

using namespace std;

int time_tag_lost = 0;
bool change_flight_mode = false;
string desired_mode;

bool px4_armed;
string px4_mode;

void StateMessageReceived(const mavros_msgs::State& StateMsg)
{
	px4_armed = StateMsg.armed;
	px4_mode = StateMsg.mode;
}

void ModeMessageReceived(const std_msgs::String& ModeMsg) {

	change_flight_mode = true;
	desired_mode = ModeMsg.data;
}

void AprilMessageReceived(const apriltags::AprilTagDetections& detectionsMsg) {
	if(&detectionsMsg.detections[0] != NULL)
	{	time_tag_lost = 0;	}
}

int main(int argc, char **argv)
{
   ros::init(argc, argv, "mode_control");
   ros::NodeHandle n;
   ros::Subscriber sub_apriltags = n.subscribe("/apriltags/detections", 1000, &AprilMessageReceived);
   ros::Subscriber sub_mode = n.subscribe("/navigation_mode", 1000, &ModeMessageReceived);
   ros::Subscriber sub_state = n.subscribe("/mavros/state", 1000, &StateMessageReceived);
   ros::ServiceClient arming_client = n.serviceClient<mavros_msgs::CommandBool>("mavros/cmd/arming");
   ros::ServiceClient set_mode_client = n.serviceClient<mavros_msgs::SetMode>("mavros/set_mode");
   ros::Rate loop_rate(10);
   ros::spinOnce();

   mavros_msgs::CommandBool arm_srv;
   mavros_msgs::SetMode set_px4_mode;

   while(ros::ok()){
 
       //MAVROS expects position in ENU frame
	
       time_tag_lost++;

	if(time_tag_lost < -5)
	{
		ROS_ERROR("No tags detected");
		change_flight_mode = true;
		desired_mode = "S";
	}

	if(change_flight_mode)
	{
		
			if(desired_mode.compare("A")==0)
			{
				ROS_INFO("ARM command received");
				if(!px4_armed)
				{
					arm_srv.request.value = true;              
	
					if(arming_client.call(arm_srv)){
						ROS_INFO("arm send ok %d", arm_srv.response.success);
					}else {
			       			ROS_ERROR("Failed Arming");
						return -1;
					}
				}
				else
				{
					ROS_ERROR("PX4 is already ARMED");
				}
			}

			else if(desired_mode.compare("T")==0)
			{
				ROS_INFO("TAKEOFF command received");
				if(px4_armed && px4_mode!="OFFBOARD")
				{
					set_px4_mode.request.base_mode = 0;              
					set_px4_mode.request.custom_mode = "OFFBOARD";
		
					if(set_mode_client.call(set_px4_mode)){
						ROS_INFO("setmode send ok %d value:", set_px4_mode.response.success);
					}else {
			       			ROS_ERROR("Failed SetMode");
						return -1;
					}
				}
				else if(!px4_armed)
				{
					ROS_ERROR("PX4 is not ARMED");
				}
				else if(px4_mode=="OFFBOARD")
				{
					ROS_ERROR("PX4 is already in OFFBOARD mode");
				}
			}

			else if(desired_mode.compare("N")==0)
			{
				ROS_INFO("NAVIGATE command received");
				if(px4_armed && px4_mode!="OFFBOARD")
				{
					set_px4_mode.request.base_mode = 0;              
					set_px4_mode.request.custom_mode = "OFFBOARD";
		
					if(set_mode_client.call(set_px4_mode)){
						ROS_INFO("setmode send ok %d value:", set_px4_mode.response.success);
					}else {
			       			ROS_ERROR("Failed SetMode");
						return -1;
					}
				}
				else if(!px4_armed)
				{
					ROS_ERROR("PX4 is not ARMED");
				}
				else if(px4_mode=="OFFBOARD")
				{
					ROS_ERROR("PX4 is already in OFFBOARD mode");
				}
			}

			else if(desired_mode.compare("S")==0)
			{
				ROS_INFO("STABILIZE command received");
				if(px4_mode!="STABILIZE")
				{
					if(px4_armed) {	set_px4_mode.request.base_mode = 208;	}
					else {	set_px4_mode.request.base_mode = 80;	}

					if(set_mode_client.call(set_px4_mode)){
						ROS_INFO("setmode send ok %d value:", set_px4_mode.response.success);
					//	return 2;
					}else {
       						ROS_ERROR("Failed SetMode");
						return -1;
					}
				}				
				else
				{
					ROS_ERROR("PX4 is already in STABILIZE mode");
				}
			}

			else if(desired_mode.compare("D")==0)
			{
				ROS_INFO("DISARM command received");
				if(px4_armed)
				{
					arm_srv.request.value = false;              
	
					if(arming_client.call(arm_srv)){
						ROS_INFO("arm send ok %d", arm_srv.response.success);
					}else {
			       			ROS_ERROR("Failed Disarming");
						return -1;
					}
				}
				else
				{
					ROS_ERROR("PX4 is already DISARMED");
				}
			}

			else
			{	
				ROS_ERROR("Mode not recognized");
				cout << "Mode " << desired_mode << " not recognized" << endl;
			}
		
		change_flight_mode = false;
	}

       ros::spinOnce();
       loop_rate.sleep();
   }      
   return 0;

}
