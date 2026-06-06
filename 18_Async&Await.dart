// Future → represents a value that will arrive later
// async → marks a function as asynchronous
// await → pauses execution until a Future completes

Future<String> fetchMessage() async {
  await Future.delayed(Duration(seconds: 2));
  return "Hello from Server";
}

// without async / await
Future<String> fetchMessage2() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hello from Server";
  });
}

// user login simulation
Future<String> loginUser(String username, String password) async {
  await Future.delayed(Duration(seconds: 2));

  if (username == "admin" && password == "1234") {
    return "Login successful";
  } else {
    return "Invalid credentials";
  }
}

// error handling
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception("Network failed");
}

void main() async {
  print("Request sent");
  String msg = await fetchMessage();

  print(msg);
  print("Done");

  // using then with out using async/await
  print("Request sent");
  fetchMessage2().then((msg) {
    print(msg);
  });
  print("Done");

  // login simulation
  print("Logging in...");

  String result = await loginUser("admin", "1234");

  print(result);

  // error handling
  try {
    String data = await fetchData();
    print(data);
  } catch (e) {
    print("Error occurred: $e");
  }
}
