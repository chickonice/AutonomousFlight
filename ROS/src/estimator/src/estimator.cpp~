#include <ros/ros.h>
#include <std_msgs/String.h> 
#include <stdio.h>
#include "geometry_msgs/PoseStamped.h"
#include <mavros_msgs/State.h> 
#include <estimator/AprilTagDetections.h>
#include <estimator/tf_datatypes.h>
#include <math.h>
#include <vector>

using namespace std;

geometry_msgs::PoseStamped CurrentPoseStamped;
geometry_msgs::Quaternion rotatedQ;

//initial AprilTag
int origin_id = 0;
float init_yaw = 0;
int max_detections = 50;

//AprilTags range from 0 to 98
const int id_range = 100;

//arrays for individual tags
int added_to_map [id_range] = {0};

float id_map_x [id_range] = {0.0};
float id_map_y [id_range] = {0.0};
float id_map_yaw [id_range] = {0.0};

float Q_x_pos [id_range] = {0.0};
float Q_y_pos [id_range] = {0.0};
float Q_z_pos [id_range] = {0.0};
float Q_yaw [id_range] = {0.0};

//offset between camera and IMU in camera frame: East-South-Down of camera
const float off_x = 0.0;
const float off_y = -0.1;
const float off_z = -0.1;

bool isMsgValid(const apriltags::AprilTagDetection& singleDetection)
{
	float temp_id = singleDetection.id;
	float temp_size = singleDetection.tag_size;
	float temp_px = singleDetection.pose.position.x;
	float temp_py = singleDetection.pose.position.y;
	float temp_pz = singleDetection.pose.position.z;
	float temp_qx = singleDetection.pose.orientation.x;
	float temp_qy = singleDetection.pose.orientation.y;
	float temp_qz = singleDetection.pose.orientation.z;
	float temp_qw = singleDetection.pose.orientation.w;	
	float qnorm = sqrt(temp_qx*temp_qx + temp_qy*temp_qy + temp_qz*temp_qz + temp_qw*temp_qw);		

/*	if(temp_id==4)
	{
		cout << temp_id << endl;
		cout << temp_size << endl;
		cout << qnorm << endl;
		cout << temp_px << " " << temp_py << " " << temp_pz << endl;
	}
*/
	if((abs(qnorm-1.0)>0.1) || temp_id<0 || temp_id>id_range || temp_size<0.02 || temp_size>0.2 || abs(temp_px)>15 || abs(temp_py)>15 || temp_pz>10 || temp_pz<0 )
	{	return false;	}	
	else
	{	return true;	}
} 

void set_rel_ENUyaw(const apriltags::AprilTagDetection& singleDetection)
{
	double curr_roll, curr_pitch, curr_yaw;
	double new_roll, new_pitch, new_yaw;
	float tx, ty, tz;
	float new_x, new_y, new_z;
	float q_x, q_y, q_z, q_w;
	float cr, cp, cy, sr, sp, sy;	
	float scale = 1.0;

	//add any special scaling factors here:
	if(singleDetection.id==0)
	{	scale = 1.9827;	}
	else if(singleDetection.id==1)
	{	scale = 0.5254;	}

	//AR detections gives position in camera frame. add offsets between camera and IMU
	//camera frame is East-South-Down
	new_x = singleDetection.pose.position.x/scale - off_x;
	new_y = singleDetection.pose.position.y/scale - off_y;
	new_z = singleDetection.pose.position.z/scale - off_z;
	
	//Get orientation quaternions from AR detections
	q_x = singleDetection.pose.orientation.x;
	q_y = singleDetection.pose.orientation.y;
	q_z = singleDetection.pose.orientation.z;
	q_w = singleDetection.pose.orientation.w;
		
	//convert quaternions to Euler angles
	//tf::Quaternion quat(tempo_w, -tempo_z, tempo_y, tempo_x);
	tf::Quaternion quat(q_x, q_y, q_z, q_w);
	tf::Matrix3x3 m(quat);
	m.getRPY(curr_roll, curr_pitch, curr_yaw);

	//calculate sines and cosines of angles to be used in transformation
	cr = cos(curr_roll);	sr = sin(curr_roll);
	cp = cos(curr_pitch);	sp = sin(curr_pitch);
	cy = cos(curr_yaw);	sy = sin(curr_yaw);

	//Follow a ZYX rotation sequence
	//rotate about z
	tx = new_x;	ty = new_y;	tz = new_z;
	new_x = (cy)*tx + (sy)*ty + (0)*tz;
	new_y = (-sy)*tx + (cy)*ty + (0)*tz;
	new_z = (0)*tx + (0)*ty + (1)*tz;
		
	//rotate about y
	tx = new_x;	ty = new_y;	tz = new_z;
	new_x = (cp)*tx + (0)*ty + (-sp)*tz;
	new_y = (0)*tx + (1)*ty + (0)*tz;
	new_z = (sp)*tx + (0)*ty + (cp)*tz;

	//rotate about x
	tx = new_x;	ty = new_y;	tz = new_z;
	new_x = (1)*tx + (0)*ty + (0)*tz;
	new_y = (0)*tx + (cr)*ty + (sr)*tz;
	new_z = (0)*tx + (-sr)*ty + (cr)*tz;

	//Assign the ENU position and quaternions of the quadrotor in the AR-frame to CurrentPoseStamped
	Q_x_pos[singleDetection.id] = -new_x;
	Q_y_pos[singleDetection.id] = -new_y;
	Q_z_pos[singleDetection.id] = -new_z;
	
//	tf::Quaternion new_quat(q_w, -q_z, q_y, q_x);
	tf::Quaternion new_quat(q_x, q_y, q_z, q_w);
	tf::Matrix3x3 new_m(new_quat);
	new_m.getRPY(new_roll, new_pitch, new_yaw);		

	Q_yaw[singleDetection.id] = new_yaw;
			
}

void AprilMessageReceived(const apriltags::AprilTagDetections& detectionsMsg) {

	vector<int> visible;	vector<int> to_map;	vector<int> mapped;
	int visible_now [id_range] = {0};
	int temp_id;
	float to_map_E, to_map_N, mapped_E, mapped_N;

	for(int i=0; i<max_detections; i++)
	{	
		if(&detectionsMsg.detections[i] == NULL) 		
		{	break;	}

		if(!isMsgValid(detectionsMsg.detections[i]))
		{	continue;	}

		temp_id = detectionsMsg.detections[i].id;
		if(visible_now[temp_id]==1)
		{	continue;	}
		visible_now[temp_id]=1;

		set_rel_ENUyaw(detectionsMsg.detections[i]);
		visible.push_back(temp_id);

		if(added_to_map[temp_id]==0)
		{	to_map.push_back(temp_id);	}
		else
		{	mapped.push_back(temp_id);	}
	}

	//add new tags to map
	for(int i=0; i<to_map.size(); i++)
	{	
		for(int j=0; j<mapped.size(); j++)
		{
			id_map_yaw[to_map[i]] = id_map_yaw[to_map[i]] + id_map_yaw[mapped[j]] + Q_yaw[mapped[j]] - Q_yaw[to_map[i]];
		}
		id_map_yaw[to_map[i]] = id_map_yaw[to_map[i]]/mapped.size();

		to_map_E = Q_x_pos[to_map[i]]*cos(id_map_yaw[to_map[i]]) - Q_y_pos[to_map[i]]*sin(id_map_yaw[to_map[i]]);
		to_map_N = Q_x_pos[to_map[i]]*sin(id_map_yaw[to_map[i]]) + Q_y_pos[to_map[i]]*cos(id_map_yaw[to_map[i]]);
		
		for(int j=0; j<mapped.size(); j++)
		{
			mapped_E = Q_x_pos[mapped[j]]*cos(id_map_yaw[mapped[j]]) - Q_y_pos[mapped[j]]*sin(id_map_yaw[mapped[j]]);
			mapped_N = Q_x_pos[mapped[j]]*sin(id_map_yaw[mapped[j]]) + Q_y_pos[mapped[j]]*cos(id_map_yaw[mapped[j]]);

			id_map_x[to_map[i]] = id_map_x[to_map[i]] + id_map_x[mapped[j]] + mapped_E - to_map_E;
			id_map_y[to_map[i]] = id_map_y[to_map[i]] + id_map_y[mapped[j]] + mapped_N - to_map_N;
		}
		
		id_map_x[to_map[i]] = id_map_x[to_map[i]]/mapped.size();
		id_map_y[to_map[i]] = id_map_y[to_map[i]]/mapped.size();


		added_to_map[to_map[i]] = 1;
		mapped.push_back(to_map[i]);
		cout << "Added " << to_map[i] << " to map" << endl;
		cout << "E: " << id_map_x[to_map[i]] << " N: " << id_map_y[to_map[i]] << " yaw: " << id_map_yaw[to_map[i]] << endl;
	}

	//get global Q-position
	float global_E = 0.0;	float global_N = 0.0;	float global_U = 0.0;	float global_yaw = 0.0;
	for(int i=0; i<mapped.size(); i++)
	{
		mapped_E = Q_x_pos[mapped[i]]*cos(id_map_yaw[mapped[i]]) - Q_y_pos[mapped[i]]*sin(id_map_yaw[mapped[i]]);
		mapped_N = Q_x_pos[mapped[i]]*sin(id_map_yaw[mapped[i]]) + Q_y_pos[mapped[i]]*cos(id_map_yaw[mapped[i]]);		
		
		global_E = global_E + id_map_x[mapped[i]] + mapped_E;
		global_N = global_N + id_map_y[mapped[i]] + mapped_N;
		global_U = global_U + Q_z_pos[mapped[i]];
		global_yaw = global_yaw + id_map_yaw[mapped[i]] + Q_yaw[mapped[i]];
	}
	global_E = global_E/mapped.size();	global_N = global_N/mapped.size();	global_U = global_U/mapped.size();
	global_yaw = global_yaw/mapped.size();

	CurrentPoseStamped.header = detectionsMsg.header;
	CurrentPoseStamped.pose.position.x = global_E;
	CurrentPoseStamped.pose.position.y = global_N;
	CurrentPoseStamped.pose.position.z = global_U;

	rotatedQ = tf::createQuaternionMsgFromRollPitchYaw(0, 0, global_yaw+M_PI/2);		
	CurrentPoseStamped.pose.orientation = rotatedQ;

	ROS_INFO("E: %0.2f N: %0.2f U: %0.2f yaw: %0.2f", global_E, global_N, global_U, global_yaw);
}

int main(int argc, char **argv)
{
   ros::init(argc, argv, "estimator");
   ros::NodeHandle n;
   ros::Publisher current_pub = n.advertise<geometry_msgs::PoseStamped>("/mavros/mocap/pose",100);
   ros::Subscriber sub_apriltags = n.subscribe("/apriltags/detections", 1000, &AprilMessageReceived);
   ros::Rate loop_rate(50);
   ros::spinOnce();
 
   added_to_map[origin_id] = 1;   
   cout << "Added " << origin_id << " to map" << endl;

   while(ros::ok()){
 
       //MAVROS expects position in ENU frame
       current_pub.publish(CurrentPoseStamped);

       ros::spinOnce();
       loop_rate.sleep();
   }      
   return 0;
}
