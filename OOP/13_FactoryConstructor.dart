// A factory constructor in Dart is a constructor that does not always create a new instance of a class.
// Instead, it can:

// return an existing instance
// return a cached object
// return a subtype object
// perform logic before object creation

// A factory constructor controls how and when an object is created.

// factory with logic

class Vehicle {
  String type;

  Vehicle(this.type);

  factory Vehicle.create(String type) {
    if (type == "car") {
      return Vehicle("Car");
    } else if (type == "bike") {
      return Vehicle("Bike");
    } else {
      return Vehicle("Unknown");
    }
  }
}

// Factory Constructor with Singleton Pattern (VERY IMPORTANT)
// Singleton = Only ONE instance in entire app

class AppConfig {
  static final AppConfig _instance = AppConfig._internal();

  String appName = "MyApp";

  AppConfig._internal();

  factory AppConfig() {
    return _instance;
  }
}

// Factory Constructor Returning Subclass

abstract class Shape {
  void draw();

  factory Shape(String type) {
    if (type == "circle") return Circle();
    if (type == "square") return Square();
    return Circle();
  }
}

class Circle implements Shape {
  @override
  void draw() {
    print("Drawing Circle");
  }
}

class Square implements Shape {
  @override
  void draw() {
    print("Drawing Square");
  }
}

// Factory Constructor with Caching (Performance Optimization)

class DatabaseConnection {
  static final Map<String, DatabaseConnection> _cache = {};

  final String name;

  DatabaseConnection._internal(this.name);

  factory DatabaseConnection(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    }

    final instance = DatabaseConnection._internal(name);
    _cache[name] = instance;
    return instance;
  }
}

void main() {
  // factory with logic
  var v1 = Vehicle.create("car");
  var v2 = Vehicle.create("bike");

  print(v1.type);
  print(v2.type);

  // factory with singleton pattern
  var a = AppConfig();
  var b = AppConfig();

  print(identical(a, b));

  // factory with returning sub class
  Shape s1 = Shape("circle");
  Shape s2 = Shape("square");

  s1.draw();
  s2.draw();

  // factory constructor with caching
  var db1 = DatabaseConnection("main");
  var db2 = DatabaseConnection("main");

  print(identical(db1, db2)); // true
}

// Rules of Factory Constructor

// Rule 1 -> Must return an instance explicitly

// return SomeClass();

// Rule 2 -> Cannot access this

// factory A() {
//   print(this); // ❌ ERROR
// }

// Rule 3 -> Can call private constructor

// Class._internal();
