/* For ros 
 * This roscpp template is written by Yichia
*/

// For ROS
#include <ros/ros.h>
#include "std_msgs/Float64.h"
#include "std_msgs/Int16.h"

using namespace std;

class chia_node
{
    public:
        // Don't move
        chia_node();                     // Constructor
        ~chia_node();                    // Destructor
        void OnStartUp();
        void SubscribedSetting();
        void PublishedSetting();
        void Iterate(const ros::TimerEvent&);
        ros::NodeHandle m_nh;                         // Private node handler
        ros::Timer timer;
        double m_loopFreq;

        // Publisher
        ros::Publisher pub_foo;                   // Private publisher instance

        // Subscriber
        void sub_callback(const std_msgs::Float64::ConstPtr& msg);
        ros::Subscriber sub_foo;

    private:
        int m_startup_msg;
        int m_count;
};

