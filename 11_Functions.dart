void main() {
  displayInfo(name: 'Alice', age: 30);
  printMessage('This is a message.');
  performOperation(5, 3, add);

  // Function with a lambda expression
  var multiply = (int a, int b) => a * b;
  print('Multiplication: ${multiply(4, 5)}');

  // Anonymous function as a callback
  var names = ['Ali', 'Sara'];

  names.forEach((name) {
    print(name);
  });

  // Using the higher-order function
  var doubleValue = createMultiplier(2);
  print('Double of 5: ${doubleValue(5)}');

  // A closure in Dart is a function that captures variables from its surrounding scope, even after that scope has closed.
  var count = 0;

  var increment = () => count++;
  var getCount = () => count;

  increment();
  increment();
  print(getCount()); // 2 — both closures share the same `count`

  // Using the typedef
  performTypedOperation(10, 20, (a, b) => a - b);

  // Using the asynchronous function
  fetchData();
  // Using the stream
  countUp().listen((number) {
    print('Stream number: $number');
  });

  // Using the generator function
  for (var number in generateNumbers(5)) {
    print('Generated number: $number');
  }
  // Using the async generator function
  countUpAsync(5).listen((number) {
    print('Async Stream number: $number');
  });
}

// Function with no parameters and no return value
void greet() {
  print('Hello, World!');
}

// Function with parameters and a return value
int add(int a, int b) {
  return a + b;
}

// Function with optional parameters
void printMessage(String message, [String prefix = 'Message:']) {
  print('$prefix $message');
}

// Function with named parameters
void displayInfo({required String name, int age = 0}) {
  print('Name: $name, Age: $age');
}

// Function with a callback
void performOperation(int a, int b, Function(int, int) operation) {
  int result = operation(a, b);
  print('Result: $result');
}

// higher-order function that returns a function
Function(int) createMultiplier(int multiplier) {
  return (int value) => value * multiplier;
}

// recursive function
int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

// Function type definition
typedef Operation = int Function(int, int);

// Using the typedef
void performTypedOperation(int a, int b, Operation operation) {
  int result = operation(a, b);
  print('Typed Result: $result');
}

// asynchronous function
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
}

Stream<int> countUp() async* {
  // async* for streams
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // yield emits values one by one
  }
}

// generator function
Iterable<int> generateNumbers(int count) sync* {
  // sync* for iterables
  for (int i = 1; i <= count; i++) {
    yield i;
  }
}

Stream<int> countUpAsync(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // emits value to the stream
  }
}
