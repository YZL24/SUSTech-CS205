#include <iostream>
#include <regex>
#include <string>

#define MAX_SIZE 100

using namespace std;

struct big_num;
int input_checker(const string &);
int input_checker_2(const string &);
big_num input_checker_b(const string &);

// an integer should at least looks like this
const regex pattern("^[+-]?[0-9]*$");

int main(int argc, char **argv) {
    int x, y;
    string temp;
    long long product;
    bool has_invalid = false;
    do {
        try {
            if (argc == 1) {  // user should input two numbers now
                cout << "Please input two integers" << endl;
                cin >> temp;
                x = input_checker(temp);
                cin >> temp;
                y = input_checker(temp);
            } else if (argc ==
                       2) {  // one number is passed by command line args,
                // another one is now to be input
                x = input_checker(string(argv[1]));
                // If x is invalid, the program will quit now,
                // otherwise it will ask the user to input another one
                cout << "You input " << x
                     << " by command line args, please input another integer"
                     << endl;
                cin >> temp;
                y = input_checker(temp);
            } else {  // there are two or more inputs passed by command line
                x = input_checker(string(argv[1]));
                y = input_checker(string(argv[2]));
                if (argc > 3) {
                    cerr << "You input more arguments than expected, the rest "
                            "ones "
                            "are ignored"
                         << endl;
                }
            }
            has_invalid = false;
        } catch (invalid_argument &) {
            cerr << "Seems like you input something other than a number\n";
            argc = 1;  // it forces the program to go into the first if block
                       // and receive two nums
            has_invalid = true;
            cin.ignore(INT_MAX, '\n');
        } catch (out_of_range &) {
            cerr << "The number you input is too large or small that exceeds "
                    "the range of int\n";
            argc = 1;
            has_invalid = true;
            cin.ignore(INT_MAX, '\n');
        }
    } while (has_invalid);

    product = static_cast<long long>(x) * y;
    cout << x << " * " << y << " = " << product;
    return 0;
}
