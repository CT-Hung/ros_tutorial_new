/* For ros 
 * This roscpp template is written by ChengXuanTsai
*/

// For ROS
#include <ros/ros.h>
#include "std_msgs/Float64.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"

using namespace std;

class homework
{
    public:
        // Don't move
        void SubscribedSetting();
        void Publishing(const std_msgs::String::ConstPtr& msg);
        ros::NodeHandle n;                         // Private node handler
        ros::Timer timer;
        double m_loopFreq;
    private:
        int m_startup_msg;
        int m_count;
};

