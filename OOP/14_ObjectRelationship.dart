// | Relationship | Type  | Dependency       | Example               |
// | ------------ | ----- | ---------------- | --------------------- |
// | Association  | HAS-A | None             | Teacher ↔ Student     |
// | Aggregation  | HAS-A | Weak             | Department → Teachers |
// | Composition  | HAS-A | Strong           | House → Rooms         |
// | Inheritance  | IS-A  | Strong type link | Dog → Animal          |

// Association (HAS-A Relationship — General)
// No ownership
// Both objects exist independently
// Loose relationship

class Teacher {
  String name;

  Teacher(this.name);

  void teach() {
    print("$name is teaching");
  }
}

class Student {
  String name;

  Student(this.name);
}

// Aggregation (Weak HAS-A Relationship
// One object contains another, but both can still exist independently.
// Key Points
// Weak ownership
// Objects can exist separately
// “Has-a but not dependent”

class Teacher1 {
  String name;

  Teacher1(this.name);
}

class Department {
  String name;
  List<Teacher1> teachers;

  Department(this.name, this.teachers);

  void showTeachers() {
    for (var t in teachers) {
      print(t.name);
    }
  }
}

// Composition (Strong HAS-A Relationship)
// One object fully owns another object. If parent is destroyed, child also dies.
// Key Points:
// Strong ownership
// Child depends on parent
// If parent is removed → child is removed
// Used heavily in UI structures (Flutter widgets)

class Room {
  String name;

  Room(this.name);
}

class House {
  List<Room> rooms = [];

  House() {
    rooms.add(Room("Bedroom"));
    rooms.add(Room("Kitchen"));
  }

  void showRooms() {
    for (var r in rooms) {
      print(r.name);
    }
  }
}

// Inheritance (IS-A Relationship)
// One class is a specialized version of another class.
// Key Points
// IS-A relationship
// Code reuse
// Supports polymorphism

class Animal {
  void eat() {
    print("Eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Barking");
  }
}

void main() {
  // Association
  Teacher teacher = Teacher("Mr. Khan");
  Student student = Student("Ali");

  teacher.teach();
  print(student.name);

  // Aggregation
  Teacher1 t1 = Teacher1("Ali");
  Teacher1 t2 = Teacher1("Sara");

  Department dept = Department("CS", [t1, t2]);

  dept.showTeachers();

  // Composition
  House house = House();

  house.showRooms();

  // Inheritance
  Dog dog = Dog();

  dog.eat(); // inherited
  dog.bark();
}
