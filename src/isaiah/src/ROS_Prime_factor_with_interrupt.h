/* For ros 
 * This roscpp template is written by isaiah
*/

// For ROS
#include <ros/ros.h>
#include "std_msgs/Float64.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Int64.h"

using namespace std;

class ROS_Prime_factor_with_interrupt
{
    public:
        // Don't move
        ROS_Prime_factor_with_interrupt();                     // Constructor
        ~ROS_Prime_factor_with_interrupt();                    // Destructor
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
	void number_msg_callback(const std_msgs::Int64::ConstPtr& msg);
        ros::Subscriber sub_number;

    private:
        int m_startup_msg;
        int m_count;
};

