// Unlike Java, C#, or TypeScript, Dart does not have a separate interface keyword.
// Every class in Dart automatically defines an interface.
// An interface is a contract that defines what methods and properties a class must have.
// Why Use Interfaces?
// ✅ Abstraction
// ✅ Loose Coupling
// ✅ Polymorphism
// ✅ Testability
// ✅ Clean Architecture

// Loose coupling means:
// One class depends on an abstraction (contract), not on a concrete implementation.

// implements means:

// No code inheritance
// Only contract inheritance

abstract class Animal {
  String name = "Animal";
  static String type = "Animal";

  void eat();
  void Sound() {
    print("The animal is making sound");
  }
}

abstract class Pet {
  void play();
  void drink() {
    print("The pet is drinking water");
  }
}

class Cat implements Animal, Pet {
  @override
  String name = "Cat";

  @override
  void eat() {
    // TODO: implement eat
    print("Cat is eating");
  }

  @override
  void Sound() {
    // TODO: implement Sound
    print("Meou");
  }

  @override
  void play() {
    // TODO: implement play
    print("Cat is playing");
  }

  @override
  void drink() {
    // TODO: implement drink
    print("The cat is drinking milk");
  }
}

void main() {
  Cat cat = Cat();

  print(Animal.type);
  print(cat.name);
  cat.eat();
  cat.Sound();
  cat.play();
  cat.drink();
}


// Interface rules:

// Rule 1 Every class automatically defines an interface.
// Rule 2 implements inherits only the contract.
// Rule 3 All public methods must be overridden.
// Rule 4 All public getters/setters must be overridden.
// Rule 5 A class can implement multiple interfaces.
// Rule 6 Interfaces support polymorphism.