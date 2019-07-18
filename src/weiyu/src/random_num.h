#include <iostream>
#include <sstream>
#include <string.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/UInt16.h"
#include <cmath>

using namespace std;
class Randnum{
    private:
        int input;
        int num_of_primes;
        int max_nop;
        int *primes;
        int last_prime;
    public:
        Randnum();
        ~Randnum(){};
        void find_next_prime();
        void find_real_prime();
        ros::NodeHandle p_node;
        ros::Subscriber sub_node;
        ros::Publisher pub_node;
        void publish_adv();
        void sub();
        void publish_data();
        void callbackfunc(const std_msgs::UInt16 msg);
};
