// A mixin in Dart is a way to reuse code across multiple classes without using inheritance.
// Reusable behavior that you can plug into any class.
// It solves the limitation of single inheritance.

mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

mixin Analytics {
  void trackEvent(String event) {
    print("[ANALYTICS] $event");
  }
}

mixin Validator {
  bool isEmailValid(String email) {
    return email.contains("@");
  }
}

class AuthService with Logger, Analytics, Validator {
  void register(String email) {
    if (isEmailValid(email)) {
      log("Registering user");
      trackEvent("Register_success");
    } else {
      log("Invalid email");
      trackEvent("Register_failed");
    }
  }
}

// You can restrict where a mixin can be used
class Animal {}

mixin Flyable on Animal {
  void fly() {
    print("Flying");
  }
}

// usage: class Bird extends Animal with Flyable {}
// invalid: class Car with Flyable {} // ERROR Because Flyable only works with Animal.

// Mixin with State (Instance Variables)
mixin CounterMixin {
  int count = 0;

  void increment() {
    count++;
  }
}

class ButtonController with CounterMixin {}

void main() {
  AuthService auth = AuthService();

  auth.register("test@gmail.com");
  auth.register("Invalid_email");

  // mixin with state
  var controller = ButtonController();

  controller.increment();
  controller.increment();

  print(controller.count);
}
