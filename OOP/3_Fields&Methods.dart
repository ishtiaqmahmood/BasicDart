// Fields (Properties) → Store data about the object.
// Methods (Functions) → Define behaviors/actions the object can perform.

class Student {
  String name; // instance field
  static String school = "Govt School"; // static field

  Student(this.name); // this refers to current object
}

// Methods are function inside class
class Mathutils {
  String name; // instance fiels

  Mathutils(this.name); // constructor

  // instance method
  void intro() {
    print("My name is: $name");
  }

  // static method
  // returning value
  static int add(int a, int b) {
    return a + b;
  }

  // method with parmeter and returning value
  double mul(double a, double b) {
    return a * b;
  }
}

// E-commerce product class
class Product {
  String name;
  double price;
  int stock;

  Product(this.name, this.price, this.stock);

  void buy(int quantity) {
    if (quantity <= stock) {
      stock -= quantity;

      print("$quantity items purchased");
    } else {
      print("Out of stock");
    }
  }

  void showInfo() {
    print("Name: $name");
    print("Price: $price");
    print("Stock: $stock");
  }
}

void main() {
  // Student class for understaning fields

  var std = Student("Jones");
  print(std.name);
  // calling static field
  print(Student.school);

  // Mathutils class for understanding methods

  var math = Mathutils("Rose");
  // calling instance method
  math.intro();
  // calling static method
  print(Mathutils.add(10, 20));
  // calling method with parameter and returning value
  print(math.mul(12.44, 34.55));

  // Real world example: product class

  Product p = Product("Laptop", 60000, 10);

  p.buy(2);

  p.showInfo();
}
