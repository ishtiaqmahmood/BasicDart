void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');

  Map<String, int> ages = {'Alice': 30, 'Bob': 25};
  print('Ages: $ages');

  Set<String> uniqueNames = {'Alice', 'Bob', 'Charlie'};
  print('Unique Names: $uniqueNames');

  // Using the generic Box class
  Box<String> stringBox = Box('Hello, Generics!');
  stringBox.displayContent();

  Box<int> intBox = Box(42);
  intBox.displayContent();

  // Using the generic function
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  String firstName = getFirstElement(names);
  print('First name: $firstName');

  List<int> emptyList = [];
  try {
    int firstNumber = getFirstElement(emptyList);
    print('First number: $firstNumber');
  } catch (e) {
    print('Error: $e');
  }

  // Using the generic map function
  Map<String, int> nameAgeMap = createMap('Alice', 30);
  print('Name-Age Map: $nameAgeMap');
}

// Generics allow you to create classes, functions, and data structures that can work with any data type while providing type safety. They are defined using angle brackets <> and can be used to specify the type of elements in a collection or the return type of a function.
class Box<T> {
  T content;

  Box(this.content);

  void displayContent() {
    print('The content of the box is: $content');
  }
}

// A generic function that takes a list of any type and returns the first element
T getFirstElement<T>(List<T> list) {
  if (list.isEmpty) {
    throw Exception('The list is empty.');
  }
  return list[0];
}

Map<K, V> createMap<K, V>(K key, V value) {
  return {key: value};
}

// T -> Type placeholder
// <T> -> Generic type parameter declaration
// Box<T> -> Generic class declaration
// Box<String> -> Generic class instantiation with String type
// getFirstElement<T> -> Generic function declaration
// getFirstElement<String> -> Generic function instantiation with String type
