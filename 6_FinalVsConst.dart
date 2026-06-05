void main() {
  // final variable: must be initialized at the time of declaration and cannot be reassigned.
  final String name = "Alice";
  print("Name: $name");
  // name = "Bob"; // This will cause an error because final variables cannot be reassigned.

  // const variable: must be initialized at the time of declaration and cannot be reassigned. It is a compile-time constant.
  const double pi = 3.14159;
  print("Value of pi: $pi");
  // pi = 3.14; // This will cause an error because const variables cannot be reassigned.

  // final variable with a non-constant value: This is allowed because the value is not known at compile time.
  final DateTime now = DateTime.now();
  print("Current time: $now");

  int a = 10;
  int b = 20;

  final num = a;
  print("Final num: $num");

  // const num2 =  b; // This is  not allowed
  // print("Const num2: $num2");
}

class Circle {
  final double radius =
      5.0; // This is a final variable, it can be initialized at declaration or in the constructor.
  // const double area = 3.14159 * 5.0 * 5.0; // can't be use as instance variable because const variables must be compile-time constants.
  static const double pi =
      3.14159; // This is a static const variable, it can be used as a compile-time constant.
}

// final means a variable can be assigned only once and its value may be determined at runtime. const means the value must be known at compile time and creates a compile-time constant object.
