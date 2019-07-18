#include "random_num.h"

Randnum::Randnum(){
    max_nop = 32;
    primes = new int [max_nop];
    last_prime = 3;
    num_of_primes = 0;
    input = 0;
}

void Randnum::find_next_prime(){
    if(num_of_primes == max_nop){
        int *temp = new int [max_nop];
        temp = primes;
        max_nop*=2;
        primes = new int [max_nop];
        for(int i = 0 ; i < max_nop ; i++ ){
            primes[i]=temp[i];
        }
    }
    if(input%2 == 0){
        primes[num_of_primes] = 2;
        num_of_primes++;
    }
    for(bool is_prime = false ; is_prime == false ; last_prime++){
        if(last_prime > input){
            publish_adv();
        }

        for(int counter = 2 ; counter <= sqrt(last_prime) ; counter++){
            if(last_prime % counter == 0){
                is_prime = false;
                break;
            }
            else{
                is_prime = true;
            }
        }
    } 
    last_prime--;
    find_real_prime();
}

void Randnum::find_real_prime(){
    if(input % last_prime == 0){
        find_next_prime();
    }
    else{
        primes[num_of_primes] = last_prime;
        num_of_primes++;
        find_next_prime();
    }
}

void Randnum::publish_adv(){
    pub_node = p_node.advertise<std_msgs::UInt16>("pub_prime",1000);
    publish_data();
}

void Randnum::sub(){
    sub_node = p_node.subscribe("number_msg",1000,&Randnum::callbackfunc,this);
}

void Randnum::callbackfunc(const std_msgs::UInt16 msg){
    input = msg.data;
    find_next_prime();
}

void Randnum::publish_data(){
    stringstream goout;
    for (int i = 0 ; i < num_of_primes ; i++){
        goout << primes[i] << "\t";
    }
    std_msgs::String published;
    published.data = goout.str();
    pub_node.publish(published); 
}

int main(int argc , char **argv){
    ros::init(argc,argv,"rand_num");
    Randnum Randnum_obj;
    Randnum_obj.sub();
    ros::spin();
}
