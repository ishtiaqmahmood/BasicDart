// A callable class in Dart is a class whose instances can be called like a function. This is achieved by defining the special method:
// call()

// mutliple parameter
class Calculator {
  int call(int a, int b) {
    return a + b;
  }
}

// Named Parameters in Callable Classes
class UserFormatter {
  String call({required String name, required int age}) {
    return "$name is $age years old";
  }
}

// Generic callable classes
class Identity<T> {
  T call(T value) {
    return value;
  }
}

// State + function behavior together
class Multiplier {
  final int factor;

  Multiplier(this.factor);

  int call(int value) {
    return value * factor;
  }
}

void main() {
  // mutliple parameter
  var calc = Calculator();

  print(calc(10, 20)); // 30

  // named parameter in callable classes
  var format = UserFormatter();

  print(format(name: "Rahim", age: 25));

  // generic callable classes
  var intIdentity = Identity<int>();
  var stringIdentity = Identity<String>();

  print(intIdentity(10)); // 10
  print(stringIdentity("Hi")); // Hi

  // State + function behavior together
  var doubleValue = Multiplier(2);

  print(doubleValue(5)); // 10
}
