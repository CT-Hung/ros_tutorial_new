#include "iostream"
#include "cstring"
#include "cstdlib"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "ros/ros.h"
#include "homework.h"
using namespace std;
     class  data
    {
        public:
        char* name ;
        char* pseudo_num;
        double num;
        void change_type(char* str)
        {
            num=atof(str);
        }
    };


     void homework:: Publishing(const std_msgs::String::ConstPtr& msg)
    {   
        ros::Publisher pub_lon = n.advertise<std_msgs::Float64>("NAV_LON",1000);
        ros::Publisher pub_lat = n.advertise<std_msgs::Float64>("NAV_LAT",1000);
        ros::Publisher pub_speed = n.advertise<std_msgs::Float64>("NAV_SPEED",1000);
        ros::Publisher pub_heading = n.advertise<std_msgs::Float64>("NAV_HEADING",1000);
    
    data type[4];
    string sentence=msg->data.c_str();
    for (int i=0;i<4;i++)
    {
        if(i==0)
            type[i].name=strtok(&sentence[0],"=");
        else
            type[i].name=strtok(NULL,"=");
        type[i].pseudo_num=strtok(NULL,",");
    }

    double number[4];
    for(int i=0;i<4;i++)
    {
        type[i].change_type(&type[i].pseudo_num[0]);
         number[i]=type[i].num;
    }
    std_msgs::Float64 publish_msg;
    publish_msg.data=number[0];
    pub_lon.publish(publish_msg);
    publish_msg.data=number[1];
    pub_lat.publish(publish_msg);
    publish_msg.data=number[2];
    pub_speed.publish(publish_msg);
    publish_msg.data=number[3];
    pub_heading.publish(publish_msg);

   
    }
    void homework::SubscribedSetting()
    {
        ros::Subscriber sub = n.subscribe("cthung_msg",1000,&homework::Publishing,this);
    }
   int main(int argc, char **argv)
 {
    ros::init(argc, argv, "homework");
    
    homework homework_obj;
    homework_obj.SubscribedSetting();
    
    ros::spin();
    
     return 0;
 }

