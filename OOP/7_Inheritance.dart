// Inheritance allows a class to reuse properties and methods from another class.
// A child class inherits the characteristics and behaviors of a parent class.
// Multiple inheritance is not allowed in Dart.

// Single inheritance
// Exmaple: Employee System
class Employee {
  String name;
  int employeeId;

  Employee(this.name, this.employeeId);

  void login() {
    print("$name logged in");
  }

  void logout() {
    print("$name logged out");
  }

  void work() {
    print("Employee is working.");
  }
}

// Child class Developer inherits Employee with extends keyword
class Developer extends Employee {
  Developer(String name, int employeeId) : super(name, employeeId);
  // super call the parent constructor

  void writeCode() {
    print("$name is writing Flutter code");
  }

  // Method Overriding - Child class can replace parent behavior or extend it

  @override
  void work() {
    // TODO: implement work
    super.work();
    print("Writing Flutter code.");
  }
}

// Multilevel Inhertance Example
// ===============================
// Grandparent Class
// ===============================

// Base class containing common properties
// and behaviors shared by all animals.
class Animal {
  String name;

  Animal(this.name);

  // Common behavior for all animals
  void eat() {
    print("$name is eating.");
  }

  void sleep() {
    print("$name is sleeping.");
  }
}

// ===============================
// Parent Class
// ===============================

// Mammal inherits from Animal.
// A mammal is a type of animal.
class Mammal extends Animal {
  Mammal(String name) : super(name);

  // Behavior specific to mammals
  void giveBirth() {
    print("$name gives birth to babies.");
  }
}

// ===============================
// Child Class
// ===============================

// Dog inherits from Mammal.
// Therefore Dog automatically gets:
//
// 1. eat() and sleep() from Animal
// 2. giveBirth() from Mammal
// 3. its own methods
class Dog extends Mammal {
  Dog(String name) : super(name);

  // Dog-specific behavior
  void bark() {
    print("$name is barking: Woof! Woof!");
  }
}

void main() {
  // Developer class (Single Inheritance)
  Developer dev = Developer("Ishtiaq Mahmood", 101);

  dev.login(); // inherited
  dev.writeCode(); // own method
  dev.logout(); // inherited
  dev.work(); // override parent method

  // Dog class (multilevel inheritance)
  // Create a Dog object
  Dog dog = Dog("Buddy");

  // Methods inherited from Animal
  dog.eat();
  dog.sleep();

  // Method inherited from Mammal
  dog.giveBirth();

  // Dog's own method
  dog.bark();
}
