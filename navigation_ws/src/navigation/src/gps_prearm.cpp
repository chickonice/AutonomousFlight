#include <ros/ros.h>
#include <mavros_msgs/State.h>
#include <sensor_msgs/NavSatFix.h>

mavros_msgs::State current_state;
sensor_msgs::NavSatFix gps_pos;

void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "gps_pos");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher gps_pub = nh.advertise<sensor_msgs::NavSatFix>
            ("/mavros/global_position/raw/fix", 10);

    ros::Publisher global_pub = nh.advertise<sensor_msgs::NavSatFix>
            ("/mavros/global_position/global", 10);

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }

    gps_pos.status.status = 0;
    gps_pos.status.service = 1;
    gps_pos.latitude  = 37.39;
    gps_pos.longitude = -122.06;
    gps_pos.altitude  = 27.57;
    

    ros::Time last_request = ros::Time::now();

    while(ros::ok()){
        if(current_state.connected){

		//gps_pos.header.stamp.secs = current_state.header.stamp.secs;
		gps_pos.header.stamp = current_state.header.stamp;

		gps_pub.publish(gps_pos);
		global_pub.publish(gps_pos);

            last_request = ros::Time::now();
        } 
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
