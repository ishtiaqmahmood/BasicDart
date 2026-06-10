// What Are Generics?

// Generics allow a class, function, method, or interface to work with different data types while maintaining type safety.

// Basic usage

class Box<T> {
  T value;

  Box(this.value);

  void showValue() {
    print(value);
  }
}

// Functions can also be generic
Iterable<T> getFirst<T>(List<T> items) sync*{
  for (T item in items) {
    yield (item);
  }
}

// Generic Service Layer
abstract class CrudService<T> {
  Future<void> create(T item);
  Future<T> read(int id);
  Future<List<T>> readAll();
  Future<void> update(T item);
  Future<void> delete(int id);
}

class User {
  final String name;

  User(this.name);
}

class UserService implements CrudService<User> {
  @override
  Future<void> create(User item) async {
    print("User created: ${item.name}");
  }

  @override
  Future<User> read(int id) async {
    return User("John");
  }

  @override
  Future<List<User>> readAll() async {
    return [User("John"), User("Sara")];
  }

  @override
  Future<void> update(User item) async {
    print("User updated");
  }

  @override
  Future<void> delete(int id) async {
    print("User deleted");
  }
}


void main() async {
  // Basic usage
  Box<String> nameBox = Box("Ishtiaq");
  Box<int> ageBox = Box(33);

  nameBox.showValue();
  ageBox.showValue();

  // Functional generics
  print(
    getFirst<String>(
      ["A", "B", "C"],
    ),
  );

  print(
    getFirst<int>(
      [1, 2, 3],
    ),
  );

  // Gneric service layer
  UserService userService = UserService();

  // CREATE
  await userService.create(User("Ali"));

  // READ
  User user = await userService.read(1);
  print(user.name);

  // READ ALL
  List<User> users = await userService.readAll();
  print(users.map((u) => u.name).toList());

  // UPDATE
  await userService.update(User("Updated Ali"));

  // DELETE
  await userService.delete(1);
}