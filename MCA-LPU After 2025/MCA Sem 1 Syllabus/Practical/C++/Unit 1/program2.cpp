#include <iostream>
using namespace std;

class Student{
    
    string name;
    int roll;
    int marks;

    public:

    void percentage(){
        int sub1,sub2,sub3;
        string name;
        int roll;
        cout<<"Enter Name of Student:";
        cin>> name;
        cout<<"Enter Roll Number of Student:";
        cin>> roll;
        cout<< "enter marks of subject 1:";
        cin>> sub1;
        cout<< "enter marks of subject 2:";
        cin>> sub2;
        cout<< "enter marks of subject 3:";
        cin>> sub3;

        marks=(sub1+sub2+sub3)/300*100;
        cout<<"Total Marks Are:"<<marks<<endl;
    }
    void display(){
        cout<<"Name of Student is:"<<name<<endl;
        cout<<"Roll Number of Student is:"<<roll<<endl;
        cout<<"Percentage of Student is:"<<marks<<endl;
    }
};
int main() {
    Student result;
    

    do {
        cout << "1. Percentage of 3 subjects" << endl;
        cout << "2. Result" << endl;
        cout << "3. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            cout << "Enter marks for subject 1: ";
            cin >> sub1;
            cout << "Enter marks for subject 2: ";
            cin >> sub2;
            cout << "Enter marks for subject 3: ";
            cin >> sub3;
            result.percentage(sub1, sub2, sub3);    
            break;
        case 2:
            cout << "Enter amount to withdraw: ";
            cin >> amount;
            account.withdraw(amount);
            break;
        case 3:
            cout << "Thank you for using our services. Goodbye!" << endl;
            break;
        default:
            cout << "Invalid choice! Please try again." << endl;
        }

    } while (choice != 3);

    return 0;
}