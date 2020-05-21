/* For ros 
 * This roscpp app is written byYichia
*/

// For ROS
#include "chia_node.h"

/*  Constructor  */
chia_node::chia_node()
{
    m_loopFreq = 4;
    m_count = 1;
}

/*  Destructor  */
chia_node::~chia_node()
{
}

/* Set the start varible here from yaml file. */
void chia_node::OnStartUp()
{
    // Import parameter from yaml file
    string key;
    if (ros::param::search("loopFreq", key))
        ros::param::get(key, m_loopFreq);
    if (ros::param::search("count", key))
        ros::param::get(key, m_count);
}

/* Set the publihers here. */
void chia_node::PublishedSetting()
{
    // Setup the publisher
    pub_foo = m_nh.advertise<std_msgs::Int16>("publish_foobar", 10);
}

/* Set the subscribers here. */
void chia_node::SubscribedSetting()
{
    sub_foo = m_nh.subscribe("subscribe_foobar", 1000, &chia_node::sub_callback, this);
}

/* Set the callback function of subscriber. */
void chia_node::sub_callback(const std_msgs::Float64::ConstPtr& msg)
{
    ROS_INFO("Sub Get : [%f]", msg->data); //need to use pointer to get the value.
    m_count = msg->data;
}

/* Loop setting. Do your main thing here. */
void chia_node::Iterate(const ros::TimerEvent&)
{
    std_msgs::Int16 msg;
    m_count++;
    ROS_INFO("Iterate Get : [%d]", m_count);
    msg.data = m_count;
    pub_foo.publish(msg);
}

/* main function */ 
/* Don't change this part normally.*/
int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init(argc, argv, "chia_node_node");

    // Create object
    chia_node  chia_node_obj;
    chia_node_obj.OnStartUp();
    chia_node_obj.PublishedSetting();
    chia_node_obj.SubscribedSetting();
    chia_node_obj.timer = chia_node_obj.m_nh.createTimer(ros::Duration(chia_node_obj.m_loopFreq), &chia_node::Iterate, &chia_node_obj);
    ros::spin();

    return 0;
}

