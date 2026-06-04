import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Hello, $name!');

  stdout.write('Enter your age: ');
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput!);
  print('You are $age years old.');

  stdout.write('Enter your CGPA: ');
  String? cgpaInput = stdin.readLineSync();
  double cgpa = double.parse(cgpaInput!);
  print('Your CGPA is $cgpa.');
}
