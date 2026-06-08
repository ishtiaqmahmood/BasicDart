// Encapsulation means:

// Bundling data (fields) and methods together and restricting direct access to internal data.
// Hide internal data
// Allow controlled access through methods (getters/setters)
// Protect object from invalid state
// Encapsulation = PRIVATE DATA + CONTROLLED ACCESS + VALIDATION LOGIC

// BankAccount class demonstrates encapsulation
// Internal data is hidden using private variables

class BankAccount {
  // -------------------------
  // Private Fields (Hidden)
  // -------------------------

  double _balance = 0; // cannot be accessed directly outside class
  String _accountHolder;

  // -------------------------
  // Constructor
  // -------------------------

  BankAccount(this._accountHolder, double initialDeposit) {
    if (initialDeposit > 0) {
      _balance = initialDeposit;
    }
  }

  // -------------------------
  // Getter (Read-only access)
  // -------------------------

  double get balance => _balance;

  String get accountHolder => _accountHolder;

  // -------------------------
  // Setter (Controlled access)
  // -------------------------

  set accountHolder(String name) {
    if (name.isNotEmpty) {
      _accountHolder = name;
    }
  }

  // -------------------------
  // Business Logic Methods
  // -------------------------

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid deposit amount");
    }
  }

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
    print("Withdrawn: $amount");
  }

  void showAccountInfo() {
    print("----- ACCOUNT INFO -----");
    print("Holder : $_accountHolder");
    print("Balance: $_balance");
    print("------------------------");
  }
}

void main() {
  BankAccount account = BankAccount("Ishtiaq Mahmood", 5000);

  // Access using methods (safe way)
  account.deposit(2000);
  account.withdraw(1500);

  // Try invalid operations
  account.withdraw(100000); // blocked

  // Access data using getter
  print(account.balance);

  // Update using setter
  account.accountHolder = "Ishtiaq M.";

  // Show final state
  account.showAccountInfo();
}
