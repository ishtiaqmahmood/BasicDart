// Getters and setters allow you to control how a field is read and modified.

// Instead of directly accessing a variable, you can add validation, calculations, formatting, or other logic.

// Getters and Setters protects the object's internal state while still providing controlled access.

// Employee salary class
class Employee {
  double _salary = 0;

  // getter method
  double get salary => _salary;

  // setter method
  set salary(double amount) {
    if (amount > 0) {
      _salary += amount;
    } else {
      print("Salary must be positive");
    }
  }
}

// E-commerce product class
class Product {
  String _name;
  double _price;

  Product(this._name, this._price);

  String get name => _name;

  double get price => _price;

  set price(double value) {
    if (value > 0) {
      _price = value;
    }
  }
}

void main() {
  // Employee class

  Employee emp = Employee();
  emp.salary = 30000;
  print(emp.salary);
  emp.salary = -5000;

  // Product class
  Product p = Product("Laptop", 60000);

  print(p.name);

  p.price = 65000;

  print(p.price);
}
