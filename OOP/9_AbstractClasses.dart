// An abstract class is a class that cannot be instantiated directly. It is used as a blueprint or contract for other classes.
// Abstract class can have Fields, Static member, constructor, Abstract method and normal methods

abstract class BankAccount {
  double balance;

  static const String appName = "My App";

  BankAccount(this.balance);

  void deposit(double amount);

  void withdraw(double amount);

  void showBalance() {
    print("Balance: \$$balance");
  }
}

class SavingsAccount extends BankAccount {
  SavingsAccount(super.balance);

  @override
  void deposit(double amount) {
    // TODO: implement deposit
    balance += amount;
  }

  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
    balance -= amount;
  }
}

class CurrentAccount extends BankAccount {
  CurrentAccount(super.balance);

  @override
  void deposit(double amount) {
    balance += amount;
  }

  @override
  void withdraw(double amount) {
    balance -= amount;
  }
}

void main() {
  SavingsAccount account = SavingsAccount(1000);

  account.deposit(500);
  account.withdraw(200);

  account.showBalance();

  print(BankAccount.appName);
}

// Abstract class rules: 
// Rule 1: Use the abstract Keyword
// Rule 2: Cannot Create Objects of an Abstract Class
// Rule 3: Abstract Methods Have No Body
// Rule 4: Child Classes Must Implement All Abstract Methods
// Rule 5: Abstract Classes Can Have Concrete Methods
// Rule 6: Abstract Classes Can Have Variables
// Rule 7: Abstract Classes Can Have Constructors
// Rule 8: Abstract Classes Can Extend Other Classes
// Rule 9: Abstract Classes Can Implement Interfaces
// Rule 10: Abstract Classes Can Implement Other Abstract Classes
// Rule 11: Abstract Classes Can Contain Static Members
// Rule 12: Abstract Classes Support Getters and Setters
// Rule 13: Abstract Classes Can Be Used as Data Types
// Rule 14: A Class Can Extend Only One Abstract Class
// Rule 15: A class Can implements multiple Abstract Class
// Rule 16: An Abstract Class May Have No Abstract Methods
// Rule 17: For implements must implement all methods, normal and abstract