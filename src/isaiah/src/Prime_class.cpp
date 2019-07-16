#include "Prime_class.h"
#include <vector>
#include <iostream>


using namespace std;

Prime_class::Prime_class(){
}

Prime_class::Prime_class(int input, int id){
    input_number = input;
    input_id = id;
    prime_number_list_index = 0;
    current_number = input;
    prime_factors.clear();

}


Prime_class::~Prime_class(){}


void Prime_class::printout(){
    cout << "number " << input_number << endl;
    cout << "prime_factors ";
    for(int i=0; i<prime_factors.size(); i++){
        cout << prime_factors.at(i) << " ";
    }
    cout << endl;
    cout << "input_id " << input_id << endl;
    cout << "current_number " << current_number << endl;
    cout << endl; 
}
