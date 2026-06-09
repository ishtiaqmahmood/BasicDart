// Extra information attached to code elements (classes, methods, variables) that can be used by tools, compilers, or runtime reflection (limited).
// Metadata is non-executable information added to code.
// It is written using annotations with @

// Built-in Metadata in Dart
// @override (VERY IMPORTANT)

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Bark");
  }
}

// @deprecated -> Marks code as outdated
class API {
  @deprecated
  void oldMethod() {
    print("Old method");
  }
}

// @immutable (Flutter important) -> Used in Flutter to mark a class as immutable.

// @immutable
// class Person {
//   final String name;

//   const Person(this.name);
// }

// @protected (Flutter) -> Means: only accessible in subclass

// class Base {
//   @protected
//   void helper() {
//     print("helper");
//   }
// }

// @visibleForTesting -> Used to expose members only for testing

// class Service {
//   @visibleForTesting
//   String getSecret() => "secret";
// }

// @mustCallSuper -> Forces child classes to call parent method

// class Base {
//   @mustCallSuper
//   void init() {
//     print("Base init");
//   }
// }

// class Child extends Base {
//   @override
//   void init() {
//     super.init();
//     print("Child init");
//   }
// }

// Custom Metadata (Very Important Concept)
// You can create your own annotations

class Author {
  final String name;

  const Author(this.name);
}

@Author("Ishtiaq")
class MyService {
  void run() {
    print("Running service");
  }
}

void main() {
  MyService service = MyService();
  service.run();
}
