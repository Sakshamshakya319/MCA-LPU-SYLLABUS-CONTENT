#include <iostream>
using namespace std;

class BankAccount {
private:
    int AccNo;
    string name;
    float balance;

public:
    void createAccount() {
        cout << "Enter your account number: ";
        cin >> AccNo;
        cout << "Enter your name: ";
        cin >> name;
        balance = 0; 
        cout << "Account created successfully!\n";
    }

    void deposit(float amount) {
        balance += amount;
        cout << "Amount deposited successfully!" << endl;
        cout << "Your current balance is: " << balance << endl;
    }

    void withdraw(float amount) {
        if (balance - amount >= 1000) { // minimum balance = 1000
            balance -= amount;
            cout << "Amount withdrawn successfully!" << endl;
            cout << "Your current balance is: " << balance << endl;
        } else {
            cout << "Insufficient balance! Minimum balance of 1000 must be maintained." << endl;
        }
    }

    void display() {
        cout << "\n--- Account Details ---" << endl;
        cout << "Account Number: " << AccNo << endl;
        cout << "Name: " << name << endl;
        cout << "Current Balance: " << balance << endl;
    }
};

int main() {
    BankAccount account;
    account.createAccount();

    int choice;
    float amount;

    do {
        cout << "1. Deposit" << endl;
        cout << "2. Withdraw" << endl;
        cout << "3. Display Account" << endl;
        cout << "4. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            cout << "Enter amount to deposit: ";
            cin >> amount;
            account.deposit(amount);
            break;
        case 2:
            cout << "Enter amount to withdraw: ";
            cin >> amount;
            account.withdraw(amount);
            break;
        case 3:
            account.display();
            break;
        case 4:
            cout << "Thank you for using our services. Goodbye!" << endl;
            break;
        default:
            cout << "Invalid choice! Please try again." << endl;
        }

    } while (choice != 4);

    return 0;
}
