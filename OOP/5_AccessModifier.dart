// Dart have no public, private and protected keyword
// Dart use:
// No underscore (_) → Public
// Leading underscore (_) → Private (library/file level)

// BankAccount class represents a real-world bank account.
// It demonstrates encapsulation using private fields,
// and controlled access using getters and setters.

class BankAccount {
  // ----------------------------
  // Private Fields (hidden data)
  // ----------------------------

  // Account holder's name (private)
  String _accountHolder;

  // Current balance (private to prevent direct modification)
  double _balance;

  // ----------------------------
  // Constructor
  // ----------------------------

  // Initializes account with holder name and initial deposit
  BankAccount(this._accountHolder, double initialDeposit)
    : _balance = initialDeposit;

  // ----------------------------
  // Getter (Read-only access)
  // ----------------------------

  // Allows external code to safely read account holder name
  String get accountHolder => _accountHolder;

  // Allows external code to safely read balance (no direct modification)
  double get balance => _balance;

  // ----------------------------
  // Setter (Controlled update)
  // ----------------------------

  // Updates account holder name with validation
  set accountHolder(String name) {
    if (name.isNotEmpty) {
      _accountHolder = name;
    }
  }

  // ----------------------------
  // Business Methods (Actions)
  // ----------------------------

  // Deposit money into account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: ৳$amount");
    } else {
      print("Invalid deposit amount");
    }
  }

  // Withdraw money with balance check
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount");
      return;
    }

    if (amount > _balance) {
      print("Insufficient balance");
      return;
    }

    _balance -= amount;
    print("Withdrawn: ৳$amount");
  }

  // Show account summary
  void showAccountInfo() {
    print("------ ACCOUNT INFO ------");
    print("Holder : $_accountHolder");
    print("Balance: ৳$_balance");
    print("--------------------------");
  }
}

// ----------------------------
// Main Function (Testing)
// ----------------------------

void main() {
  // Create a new bank account with initial deposit
  BankAccount account = BankAccount("Ishtiaq Mahmood", 5000);

  // Read data using getters
  print(account.accountHolder);
  print(account.balance);

  // Perform banking operations
  account.deposit(2000);
  account.withdraw(1500);
  account.withdraw(10000); // invalid case

  // Update account holder using setter
  account.accountHolder = "Ishtiaq M.";

  // Show final state
  account.showAccountInfo();
}
