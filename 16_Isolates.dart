import 'dart:isolate';

// This code demonstrates the use of isolates in Dart to perform a heavy computation task without blocking the main thread. The `heavyTask` function calculates the sum of numbers from 0 to 999,999,999 and sends the result back to the main isolate using a `SendPort`. The main isolate listens for the message and prints the result once it is received.
void heavyTask(SendPort sendport) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendport.send(sum);
}

// Multiple isolates running parallel task

void worker(SendPort sendPort) {
  int result = 0;
  for (int i = 0; i < 1000000000; i++) {
    result += i;
  }
  sendPort.send(result);
}

void main() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(heavyTask, receivePort.sendPort);
  receivePort.listen((message) {
    print("The sum is: $message");
    receivePort.close();
  });

  // Spawning multiple isolates to perform parallel tasks
  final rp1 = ReceivePort();
  final rp2 = ReceivePort();

  await Isolate.spawn(worker, rp1.sendPort);
  await Isolate.spawn(worker, rp2.sendPort);

  rp1.listen((message) {
    print("Result from worker 1: $message");
    rp1.close();
  });
  rp2.listen((message) {
    print("Result from worker 2: $message");
    rp2.close();
  });
}
