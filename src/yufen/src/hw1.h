/* For ros 
 * This roscpp template is written by yufen
*/

// For ROS
#include <ros/ros.h>
#include "std_msgs/Float64.h"
#include "std_msgs/Int16.h"
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"

using namespace std;

class hw1
{
    public:
        // Don't move
        hw1();                     // Constructor
        ~hw1();                    // Destructor
        void OnStartUp();
        void SubscribedSetting();
        void PublishedSetting();
        void PublishEverything();
        ros::NodeHandle m_nh;                         // Private node handler
        double m_loopFreq;

        // Publisher
       ros::Publisher pub_lon;
       ros::Publisher pub_lat;
       ros::Publisher pub_speed;
       ros::Publisher pub_heading;
       // Private publisher instance

        // Subscriber
        void sub_callback(const std_msgs::String::ConstPtr& msg);
        ros::Subscriber sub_foo;

    private:
        int m_startup_msg;
        double m_lon;
	double m_lat;
	double m_speed;
	double m_heading;
};

