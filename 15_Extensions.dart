void main() {
  // An extension in Dart lets you add new features (methods, getters, setters) to an existing class without changing its original code.
  String name = "alice";
  print(name.capitalize()); // Output: Alice

  // You can also create extensions for built-in types like int, List, etc.
  int number = 4;
  print(number.isEvenNumber()); // Output: true

  // Extension Getter
  String sentence = "Hello world from Dart";
  print(sentence.wordCount); // Output: 4

  // Extension Setter
  int value = 10;
  value.printvalue = "This is a test"; // Output: This is a test : 10

  // Extensions on lists
  List<int> numbers = [1, 2, 3, 4];
  print(numbers.sum()); // Output: 10
  numbers.printAll(); // Output: 1, 2, 3, 4

  // Generics in Extensions
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  fruits.printAll(); // Output: Apple, Banana, Cherry
  List<int> nums = [10, 20, 30];
  nums.printAll(); // Output: 10, 20, 30

  // Static extension
  print(StaticExtension.reverse("Dart")); // Output: traD

  // Email validation using extension
  String email = 'example@example.com';
  print(email.isValidEmail()); // Output: true
}

extension StringExtensions on String {
  String capitalize() {
    if (this.isEmpty) return this;
    return this[0].toUpperCase() + this.substring(1);
  }
}

extension NumberExtension on int {
  bool isEvenNumber() {
    return this % 2 == 0;
  }
}

// Extension Getter
extension StringInfo on String {
  int get wordCount => this.split(' ').length;
}

// Extension Setter
extension NumberSetter on int {
  set printvalue(String value) {
    print("$value: $this");
  }
}

// Extensions on lists
extension ListExtension on List<int> {
  int sum() {
    return this.reduce((a, b) => a + b);
  }
}

// Generics in Extensions
extension ListExtensions<T> on List<T> {
  void printAll() {
    for (var item in this) {
      print(item);
    }
  }
}

// static extension
extension StaticExtension on String {
  static String reverse(String str) {
    return str.split('').reversed.join();
  }
}

// Note: Extensions cannot override existing methods of the class they are extending. If a method with the same name already exists, the extension method will not be called.

// Extensions are a powerful way to enhance the functionality of existing classes without modifying their source code, making your code more modular and reusable.
// You can also use extensions to add functionality to your own classes, making them more versatile and easier to work with.
// Extensions are a great way to keep your code clean and organized, especially when you want to add functionality to classes that you do not control (like classes from third-party libraries).
// Remember that extensions are not a replacement for inheritance or composition, but rather a complementary feature that allows you to add functionality in a more flexible way.
// In summary, extensions in Dart provide a powerful way to enhance the functionality of existing classes without modifying their source code, making your code more modular and reusable.

// Email validation using extension
extension EmailValidator on String {
  bool isValidEmail() {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(this);
  }
}
