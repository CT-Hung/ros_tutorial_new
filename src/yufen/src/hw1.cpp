/* For ros 
 * This roscpp app is written byyufen
*/

// For ROS
#include "hw1.h"

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>
#include <vector>
#include <cstring>

/*  Constructor  */
hw1::hw1()
{
    m_loopFreq = 4;
    m_lon = 0;
    m_lat = 0;
    m_speed = 0;
    m_heading = 0;
}

/*  Destructor  */
hw1::~hw1()
{
}

/* Set the start varible here from yaml file. */
void hw1::OnStartUp()
{
    // Import parameter from yaml file
    string key;
    if (ros::param::search("loopFreq", key))
        ros::param::get(key, m_loopFreq);
}

/* Set the publihers here. */
void hw1::PublishedSetting()
{
    // Setup the publisher
    pub_lon = m_nh.advertise<std_msgs::Float64>("NAV_LON", 1000);
    pub_lat = m_nh.advertise<std_msgs::Float64>("NAV_LAT", 1000);
    pub_speed = m_nh.advertise<std_msgs::Float64>("NAV_SPEED", 1000);
    pub_heading = m_nh.advertise<std_msgs::Float64>("NAV_HEADING", 1000);
}

/* Set the subscribers here. */
void hw1::SubscribedSetting()
{
    sub_foo = m_nh.subscribe("cthung_msg", 1000, &hw1::sub_callback, this);
}

/* Set the callback function of subscriber. */
void hw1::sub_callback(const std_msgs::String::ConstPtr& msg)
{
    vector<string> words;
    string str = msg->data.c_str();
    char *strs = new char[str.length()+1];
    strcpy(strs, str.c_str());

    const char *delim = ",";

    char *p = strtok(strs, delim);
    int index = 0;
    while(p){
	    string s = strstr(p, "=");
	    s = s.erase(0, 1);
	    stringstream convert(s);
	    if(index == 0){convert >> m_lon;}
	    if(index == 1){convert >> m_lat;}
	    if(index == 2){convert >> m_speed;}
	    if(index == 3){convert >> m_heading;}
	    ++index;

	    p = strtok(NULL, delim);
    }
    
    hw1::PublishedSetting();
    hw1::PublishEverything();
}

/* Loop setting. Do your main thing here. */
void hw1::PublishEverything()
{
    std_msgs::Float64 msg;

    msg.data = m_lon;
    pub_lon.publish(msg);

    msg.data = m_lat;
    pub_lat.publish(msg);

    msg.data = m_speed;
    pub_speed.publish(msg);

    msg.data = m_heading;
    pub_heading.publish(msg);
}

/* main function */ 
/* Don't change this part normally.*/
int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init(argc, argv, "hw1_node");

    // Create object
    hw1  hw1_obj;
    hw1_obj.OnStartUp();
    hw1_obj.PublishedSetting();
    hw1_obj.SubscribedSetting();
    ros::spin();

    return 0;
}

