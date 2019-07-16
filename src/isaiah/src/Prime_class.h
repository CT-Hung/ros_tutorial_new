#include <vector>

class Prime_class
{
    public:
	Prime_class();
	Prime_class(int input, int id);
	~Prime_class();

        int input_number;
	int input_id;
        std::vector<int> prime_factors;
        int prime_number_list_index;
        int current_number;

	void printout();
};
