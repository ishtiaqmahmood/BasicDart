// Class or blueprint
class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient balance");
    }
  }

  void showBalance() {
    print("$owner Balance: $balance");
  }
}

void main() {
  var account1 = BankAccount("John", 1000); // Object
  var account2 = BankAccount("Rick", 2000); // Object

  account1.deposit(100);
  account2.deposit(200);

  account1.withdraw(200);
  account2.withdraw(300);

  account1.showBalance();
  account2.showBalance();
}
