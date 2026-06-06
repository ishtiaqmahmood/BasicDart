// A Future gives you a result only once.
// Example
// API call. DB fetch, file read/write, one-time computation

Future<String> getUser() async {
  await Future.delayed(Duration(seconds: 2));
  return "John";
}

// A Stream gives you values repeatedly over time.
// Exmaple
// Live Data feed, Live chat message, Real time notification, Firebase real time database, button clicks/events, websocket data

Stream<int> counter() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  // Future example
  print("Loading...");

  String user = await getUser();

  print(user);

  // Stream example
  counter().listen((value) {
    print("Value: $value");
  });
}
