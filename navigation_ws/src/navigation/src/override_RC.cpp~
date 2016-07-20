#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <aruco/aruco.h>
#include <iostream>
#include <mavros/OverrideRCIn.h>
#include <mavros/State.h>

#define FACTOR  0.6

#define MINRC   1100
#define BASERC  1500
#define MAXRC   1900

// Subscriber to bottom camera
image_transport::Subscriber sub;

// Subscriber to flight mode
ros::Subscriber mavros_state_sub;

// RC publisher
ros::Publisher pub;

// Time control
ros::Time lastTime;

// Mark info
float MarkX, MarkY; // Mark center
float lastMarkX, lastMarkY; // Last mark center
double lastMarkVelX, lastMarkVelY; // Last mark velocity

//Image center
float ImageX, ImageY;

double Roll, Pitch;

// Flight mode
std::string mode;
bool guided;
bool armed;

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
    try
    {
        // Time since last call
        double timeBetweenMarkers = (ros::Time::now() - lastTime).toSec();
        lastTime = ros::Time::now();
        
        char tab2[1024];
        strncpy(tab2, mode.c_str(), sizeof(tab2));
        tab2[sizeof(tab2) - 1] = 0;
        ROS_INFO("Marker = (%f , %f) | LastMarker = (%f , %f) \n timeBetweenMarkers = %fs | lastMarkVelX = (%f , %f)\n Roll = %f | Pitch = %f\n Mode = %s \n", MarkX, MarkY, lastMarkX, lastMarkY, timeBetweenMarkers, lastMarkVelX, lastMarkVelY, Roll, Pitch, tab2);

        aruco::MarkerDetector MDetector;
        vector<aruco::Marker> Markers;
        cv::Point2f MarkCenter;

        // Get the msg image
        cv::Mat InImage;
        InImage = cv_bridge::toCvShare(msg, "bgr8")->image;

        // Error between Image and Mark
        float ErX = 0.0;
        float ErY = 0.0;

        // Get the Image center
        ImageX = InImage.cols / 2.0f;
        ImageY = InImage.rows / 2.0f;

        // Detect markers
        MDetector.detect(InImage,Markers);

        // Create RC msg
        mavros::OverrideRCIn msg;

        lastMarkX = MarkX;
        lastMarkY = MarkY;

        // For each marker, draw info ant its coundaries in the image
        for (unsigned int i = 0; i<Markers.size(); i++){
            Markers[i].draw(InImage,cv::Scalar(0,0,255),2);

            // Calculate the error between Image center and Mark center
            MarkCenter = Markers[i].getCenter();
            MarkX = MarkCenter.x;
            MarkY = MarkCenter.y;
            ErX = ImageX - MarkX;
            ErY = ImageY - MarkY;
        }

        // Calculate velocity
        if (timeBetweenMarkers < 1.0){
            lastMarkVelX = (lastMarkX - MarkX)/timeBetweenMarkers;
            lastMarkVelY = (lastMarkY - MarkY)/timeBetweenMarkers;
        } else{
            lastMarkVelX = 0.0;
            lastMarkVelY = 0.0;
        }

        // Calculate Roll and Pitch depending on the mode
        if (mode == "LOITER"){
            Roll = BASERC - ErX * FACTOR;
            Pitch = BASERC - ErY * FACTOR;
        }else if (mode == "ALT_HOLD"){
            Roll = BASERC - (0.5*ErX+0.1*lastMarkVelX);
            Pitch = BASERC - (0.5*ErY+0.1*lastMarkVelY); 
        }else{
            Roll = BASERC;
            Pitch = BASERC;
        }  
         
        // Limit the Roll
        if (Roll > MAXRC)
        {
            Roll = MAXRC;
        } else if (Roll < MINRC)
        {
            Roll = MINRC;
        }

        // Limit the Pitch
        if (Pitch > MAXRC)
        {
            Pitch = MAXRC;
        } else if (Pitch < MINRC)
        {
            Pitch = MINRC;
        }

        msg.channels[0] = Roll;     //Roll
        msg.channels[1] = Pitch;    //Pitch
        msg.channels[2] = BASERC;   //Throttle
        msg.channels[3] = 0;        //Yaw
        msg.channels[4] = 0;
        msg.channels[5] = 0;
        msg.channels[6] = 0;
        msg.channels[7] = 0;

        pub.publish(msg);

        cv::imshow("view", InImage);
        cv::waitKey(30);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
}


void mavrosStateCb(const mavros::StateConstPtr &msg)
{
    if(msg->mode == std::string("CMODE(0)"))
        return;
    //ROS_INFO("I heard: [%s] [%d] [%d]", msg->mode.c_str(), msg->armed, msg->guided);
    mode = msg->mode;
    guided = msg->guided==128;
    armed = msg->armed==128;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "image_listener");
    ros::NodeHandle nh;
    lastTime = ros::Time::now();
    image_transport::ImageTransport it(nh);
    sub = it.subscribe("/erlecopter/bottom/image_raw", 1, imageCallback);
    mavros_state_sub = nh.subscribe("/mavros/state", 1, mavrosStateCb);
    pub = nh.advertise<mavros::OverrideRCIn>("/mavros/rc/override", 10);;
    ros::spin();
}
