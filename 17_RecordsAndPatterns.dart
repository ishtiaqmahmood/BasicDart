// Records = lightweight tuples (data container)
// Patterns = way to match + destructure data

// A record is a lightweight, anonymous data structure that can hold multiple values without creating a class.
// Patterns are used for matching and destructuring data.
void main() {
  // records
  var user = (name: 'john', age: 25);

  print("User name : ${user.name}");
  print("User age : ${user.age}");

  // function returning multiple values
  var u = getUser();
  print(u.$1);

  // Pattern examples
  // positional pattern matching
  var std = ('Kith', 25);
  var (name, age) = std;

  print(name);
  print(age);

  // named record pattern
  var std2 = (name: 'Kith', age: 25);
  var (name: na, age: a) = std2;

  print(na);
  print(a);

  // pattern matching in switch
  checkValue((10, 20));
  checkValue(("John", 25));
  checkValue(100);

  // if-case pattern
  var data = ('Ali', 20);

  if (data case (String name, int age)) {
    print("$name is $age");
  }

  // list patterns
  var list = [1, 2, 3];

  var [a1, b2, c3] = list;

  print(a1); // 1

  // map patterns
  var user2 = {'name': 'John', 'age': 25};

  if (user2 case {'name': String n, 'age': int a}) {
    print(n);
    print(a);
  }
}

// function returning multiple values (records example)
(String, int) getUser() {
  return ('Alice', 30);
}

// pattern matching in switch
void checkValue(var value) {
  switch (value) {
    case (int x, int y):
      print("Two ints: $x and $y");
    case (String name, int age):
      print("User: $name, $age");
    default:
      print("Unknown");
  }
}
