/* For ros 
 * This roscpp app is written by isaiah
*/
//libraries for usage
#include<iostream> 
#include<stdlib.h>
#include<vector>
#include "Prime_class.cpp"

// For ROS
#include "ROS_Prime_factor_with_interrupt.h"
#include "ros/ros.h"
#include "std_msgs/Int64.h"

//global setting
using namespace std;
std::vector<int> prime_number_list;
std::vector<int> prime_factor_decomposition(int input_x);
int extend_prime_number_list();
std::vector<int> prime_factor_decomposition(Prime_class &input_prime_class);
//void number_msg_callback(const std_msgs::Int64::ConstPtr& msg);

int input_id = 0;
int output_id = 0;
bool interrupt = false;
std::vector<Prime_class> dealing_list;

/*  Constructor  */
ROS_Prime_factor_with_interrupt::ROS_Prime_factor_with_interrupt()
{
    m_loopFreq = 4;
    m_count = 1;
}

/*  Destructor  */
ROS_Prime_factor_with_interrupt::~ROS_Prime_factor_with_interrupt()
{
}

/* Set the start varible here from yaml file. */
void ROS_Prime_factor_with_interrupt::OnStartUp()
{
    // Import parameter from yaml file
    string key;
    if (ros::param::search("loopFreq", key))
        ros::param::get(key, m_loopFreq);
    if (ros::param::search("count", key))
        ros::param::get(key, m_count);
}

/* Set the publihers here. */
void ROS_Prime_factor_with_interrupt::PublishedSetting()
{
    // Setup the publisher
    //pub_foo = m_nh.advertise<std_msgs::Int16>("publish_foobar", 10);
}

/* Set the subscribers here. */
void ROS_Prime_factor_with_interrupt::SubscribedSetting()
{
    sub_number = m_nh.subscribe("number_msg", 1000, &ROS_Prime_factor_with_interrupt::number_msg_callback, this);
}

/* Set the callback function of subscriber. */
void ROS_Prime_factor_with_interrupt::number_msg_callback(const std_msgs::Int64::ConstPtr& msg)
{
    int tmp = msg->data; 
//    cout << "I heard: " << tmp << endl;
//    vector<int> ans;
    interrupt = true;    

    Prime_class temp_prime_class = Prime_class(tmp, input_id);
    input_id++;

    dealing_list.push_back(temp_prime_class);
//    temp_prime_class.prime_factors = prime_factor_decomposition(temp_prime_class);
   
//    temp_prime_class.printout();
   
    

//    ans = prime_factor_decomposition(tmp);

//    cout << "prime factors is: " << endl; 
//    for(int i=0; i<ans.size(); i++){
//        cout << ans.at(i) << "  ";
//    }
//    cout << endl;
}

/* Loop setting. Do your main thing here. */
void ROS_Prime_factor_with_interrupt::Iterate(const ros::TimerEvent&)
{
    cout << "loop "<< endl;

    interrupt = false;

    while(!dealing_list.empty() && interrupt == false){
    
        Prime_class &temp_prime_class = dealing_list.back();
        prime_factor_decomposition(temp_prime_class);

        if (temp_prime_class.current_number == 1){
            temp_prime_class.output_id = output_id;
            output_id++;

            temp_prime_class.printout();
            dealing_list.pop_back();
            cout << "\n" << endl;
        }

    }
}

/* main function */ 
/* Don't change this part normally.*/
int main (int argc, char** argv)
{
    prime_number_list.clear();
    prime_number_list.push_back(2);
    //test loop function
    
    
//    Prime_class temp_prime_class = Prime_class(8767, 100);
//    dealing_list.push_back(temp_prime_class);
    
//    temp_prime_class = Prime_class(87617, 100);
//    dealing_list.push_back(temp_prime_class);
    
//    temp_prime_class = Prime_class(82767, 100);
//    dealing_list.push_back(temp_prime_class);
    //end testing

    // Initialize ROS
    ros::init(argc, argv, "ROS_Prime_factor_with_interrupt_node");

    // Create object
    ROS_Prime_factor_with_interrupt  ROS_Prime_factor_with_interrupt_obj;
    ROS_Prime_factor_with_interrupt_obj.OnStartUp();
    ROS_Prime_factor_with_interrupt_obj.PublishedSetting();
    ROS_Prime_factor_with_interrupt_obj.SubscribedSetting();
    ROS_Prime_factor_with_interrupt_obj.timer = ROS_Prime_factor_with_interrupt_obj.m_nh.createTimer(ros::Duration(ROS_Prime_factor_with_interrupt_obj.m_loopFreq), &ROS_Prime_factor_with_interrupt::Iterate, &ROS_Prime_factor_with_interrupt_obj);
    ros::spin();

    return 0;
}



std::vector<int> prime_factor_decomposition(int input_x) {
    vector<int> prime_factor;
    prime_factor.clear();

    int examined_number = input_x;
    int i=0; 
    bool run = true;
    
    //devide by the prime number list
    while(run){
        if(examined_number % prime_number_list.at(i) == 0){
            examined_number = examined_number/prime_number_list.at(i);
            if(examined_number == 1){
                run = false;
            }

            //don't recount the prime in
            if(prime_factor.empty()){
                prime_factor.push_back(prime_number_list.at(i)); 
            }
            if(prime_factor.back() != prime_number_list.at(i)){
                prime_factor.push_back(prime_number_list.at(i));
            } 
            // do recount the prime
            i--;
        }

        //if the prime is not enought to count
        if(i == prime_number_list.size()-1){ 
            //cout << "extend_prime_list " << extend_prime_number_list() << endl;
            extend_prime_number_list();
        }
    
        i++;
    }
    
    
    return prime_factor;
}








int extend_prime_number_list() {
	int i=0;
	int last_prime = prime_number_list.back();
    //cout << last_prime << " is the last prime" << endl;
    int temp = last_prime + 1;
    //cout << "checking for " << temp << endl;
    
    bool temp_is_prime = false;
    while(!temp_is_prime){
    
    
        bool run = true;

        while(run && i<prime_number_list.size()){
       
            if( temp % prime_number_list.at(i) == 0){
                //cout<< temp <<"isn't a prime"<<endl;
                run = false; 
                temp_is_prime = false;
            }else if (prime_number_list.at(i)*prime_number_list.at(i) > temp ){
                //cout << temp << " is prime" << endl;
                run = false;
                temp_is_prime = true;
            }else{
                i++;
            }
        }

        if(!temp_is_prime){
            temp = temp+1;
            i=0;
        }
    }

    prime_number_list.push_back(temp);
    return temp;
}




std::vector<int> prime_factor_decomposition(Prime_class &input_prime_class) {
    
   
    vector<int> &prime_factor = input_prime_class.prime_factors;
   
    if (interrupt == true){
        return prime_factor;
    } 
   
    int &examined_number = input_prime_class.current_number;

    if(examined_number==1){
        return prime_factor; 
    }


    int &i = input_prime_class.prime_number_list_index; 
    bool run = true;
    
    //devide by the prime number list
    while(run && interrupt == false){
        if(examined_number % prime_number_list.at(i) == 0){
            examined_number = examined_number/prime_number_list.at(i);
            if(examined_number == 1){
                run = false;
            }

            //don't recount the prime in
            if(prime_factor.empty()){
                prime_factor.push_back(prime_number_list.at(i)); 
            }
            if(prime_factor.back() != prime_number_list.at(i)){
                prime_factor.push_back(prime_number_list.at(i));
            } 
            // do recount the prime
            i--;
        }

        //if the prime is not enought to count
        if(i == prime_number_list.size()-1){ 
            //cout << "extend_prime_list " << extend_prime_number_list() << endl;
            extend_prime_number_list();
        }
    
        i++;
    }
    
    
    return prime_factor;
}

