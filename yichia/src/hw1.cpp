#include"ros/ros.h"
#include"std_msgs/String.h"
#include<iostream>
#include<string.h>
#include<string>
#include<sstream>
#include<stdlib.h>
#include<cstdlib>
#include<vector>
using namespace std;

void StringMsgCallback(const std_msgs::String::ConstPtr& msg){
    String inputString = msg;
    istringstream in(inputString);
    vector<string> splitString;
    string partStr;
    while(in>>partStr){
        splitString.push_back(partStr);
    }
    _Float64 numFloatLon = stof(splitString[2]);
    _Float64 numFloatLat = stof(splitString[6]);
    _Float64 numFloatSpeed = stof(splitString[10]);
    _Float64 numFloatHeading = stof(splitString[14]);
    ROS_INFO("NAV_LON ", numFloatLon, "NAV_LAT ", numFloatLat, "NAV_SPEED ", numFloatSpeed, "NAV_HEADING ", numFloatHeading, "\n");

}
int main(int argc, char **argv){
    ros::init(argc, argv, "hw1");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("pubStringMsg", 1000, StringMsgCallback);
    ros::spin();
    return 0;

}



