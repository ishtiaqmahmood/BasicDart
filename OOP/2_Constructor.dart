// Default Constructor
class Student {
  String? name;
}

// Parameterized Constructor
class Std {
  String name;
  int roll;

  Std(this.name, this.roll);
}

// Named constructor
class User {
  String name;
  int age;

  User(this.name, this.age);

  User.guest(String name, int age) : name = name, age = age;

  User.admin() : name = "Admin", age = 50;
}

// Factory constructor
class Logger {
  static final Map<String, Logger> _cache = {};

  final String name;

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);
}

// Redirecting constructor
// One constructor can call another constructor.
class User2 {
  String name;
  int age;

  User2(this.name, this.age);
  User2.guest() : this("guest", 0);
}

// Const Constructor
// All fields must be final
// Constructor must be const
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

// Constructor Initializer List
// Runs before the constructor body
class Rectangle {
  final int width;
  final int height;
  final int area;

  Rectangle(this.width, this.height) : area = width * height;
}

// Super Constructor
// Calling a parent class constructor
class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  Dog(String name) : super(name);
}

void main() {
  // default constructor
  var s = Student();
  s.name = "Alice";
  print(s.name);

  // parameterized constructor
  var s1 = Std("Alisa", 40);
  print(s1.name);
  print(s1.roll);

  // named constructor
  var u1 = User('Alex', 23);
  var u2 = User.guest('Timi', 30);
  var u3 = User.admin();

  print(u1.name);
  print(u2.name);
  print(u3.name);

  // factory constructor
  var a = Logger("app");
  var b = Logger("app");

  print(identical(a, b)); // true

  // redirecting constructor
  var user2 = User2.guest();
  print(user2.name);

  // const constructor
  const p1 = Point(10, 20);
  const p2 = Point(10, 20);

  print(identical(p1, p2)); // true

  // constructor initializer list
  var r = Rectangle(10, 20);

  print(r.area);

  // super constractor
  var dog = Dog('Tommy');
  print(dog.name);
}
