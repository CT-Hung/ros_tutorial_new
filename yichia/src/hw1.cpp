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

int main(int argc, char **argv){
    ros::init(argc, argv, "hw1");
    string inputString = "";
    cin>>inputString;
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
    cout<<"NAV_LON "<<numFloatLon<<"\n";
    cout<<"NAV_LAT "<<numFloatLat<<"\n";
    cout<<"NAV_SPEED "<<numFloatSpeed<<"\n";
    cout<<"NAV_HEADING "<<numFloatHeading<<"\n";
    return 0;

}



