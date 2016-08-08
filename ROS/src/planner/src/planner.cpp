#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <stdio.h>
#include <math.h>
#include <std_msgs/String.h>

using namespace std;

//later include subscriber to terarangertower

geometry_msgs::PoseStamped DesiredPoseStamped;

int takeoff_timer = 0;
string desired_mode = "0";
const float desired_takeoff_time = 3;

void ModeMessageReceived(const std_msgs::String& ModeMsg) {
	desired_mode = ModeMsg.data;
	takeoff_timer = 0;
}

int main(int argc, char **argv)
{

   ros::init(argc, argv, "planner");
   ros::NodeHandle n;
   ros::Publisher desired_pub = n.advertise<geometry_msgs::PoseStamped>("/mavros/setpoint_position/local",100);
   ros::Subscriber sub_mode = n.subscribe("/navigation_mode", 1000, &ModeMessageReceived);
   ros::Rate loop_rate(10);
   ros::spinOnce();

   int count = 0;

   while(ros::ok()){

     DesiredPoseStamped.header.stamp = ros::Time::now();
       DesiredPoseStamped.header.seq=count;
       DesiredPoseStamped.header.frame_id = 1; 
       DesiredPoseStamped.pose.orientation.x = 0;
       DesiredPoseStamped.pose.orientation.y = 0;
       DesiredPoseStamped.pose.orientation.z = 0.7071;
       DesiredPoseStamped.pose.orientation.w = 0.7071;

//	cout << "Desired mode: " << desired_mode << " ";

	if(desired_mode.compare("T")==0)
	{
	       DesiredPoseStamped.pose.position.x = 0.0;
	       DesiredPoseStamped.pose.position.y = 0.0;
	       DesiredPoseStamped.pose.position.z = 0 + 1*(float)(takeoff_timer)/(10*desired_takeoff_time);			

		if(DesiredPoseStamped.pose.position.z  > 1.0)
		{	DesiredPoseStamped.pose.position.z = 1.0;	}
	
		takeoff_timer++;
	}
	else if(desired_mode.compare("N")==0)
	{
	       DesiredPoseStamped.pose.position.x = 0.0;
	       DesiredPoseStamped.pose.position.y = 0.0;
	       DesiredPoseStamped.pose.position.z = 1.0;			
	}
	else
	{
	       DesiredPoseStamped.pose.position.x = 0.0;
	       DesiredPoseStamped.pose.position.y = 0.0;
	       DesiredPoseStamped.pose.position.z = 0.0;
	}
//	cout << desired_mode << endl;
	count++;

       //MAVROS expects position in ENU frame
       desired_pub.publish(DesiredPoseStamped);

       ros::spinOnce();
       loop_rate.sleep();
   }      
}
