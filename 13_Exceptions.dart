void main() {
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print(result);
  } on IntegerDivisionByZeroException {
    //on Clause (Specific Exceptions)
    print('Cannot divide by zero.');
  } catch (e) {
    //catch Clause (General Exceptions)
    print('Caught an exception: $e');
  } finally {
    //finally Clause (Always Executes)
    print('This will always execute.');
  }

  // Using the custom exception
  try {
    checkAge(16); // This will throw an AgeException
  } on AgeException catch (e) {
    print(e);
  }
}

class AgeException implements Exception {
  String cause;
  AgeException(this.cause);

  @override
  String toString() {
    return 'AgeException: $cause';
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw AgeException('Age must be at least 18.');
  } else {
    print('Age is valid.');
  }
}
