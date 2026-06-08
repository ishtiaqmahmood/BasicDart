// Polymorphism means : One interface, many forms
// The same method call can produce different behavior depending on the object's actual type.

// Runtime Polymorphism (Method Overriding)
// Example: Notification System

// Base class
class Notification {
  void send() {
    print("Sending notification...");
  }
}

class EmailNotification extends Notification {
  @override
  void send() {
    print("Sending Email Notification");
  }
}

class SmsNotification extends Notification {
  @override
  void send() {
    print("Sending SMS Notification");
  }
}

class PushNotification extends Notification {
  @override
  void send() {
    print("Sending Push Notification");
  }
}

// Polymorphism with Abstract Classes
abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCardPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using Credit Card");
  }
}

class PayPalPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using PayPal");
  }
}

class MobileBankingPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using Mobile Banking");
  }
}

void processPayment(PaymentMethod paymentMethod, double amount) {
  paymentMethod.pay(amount);
}

// Compile-Time Polymorphism (Generics)
// Dart does not support traditional method overloading like Java or C++.

class Box<T> {
  T value;

  Box(this.value);

  void show() {
    print(value);
  }
}

void main() {
  // Runtime Polymorphism (with overriding)
  Notification email = EmailNotification();
  Notification sms = SmsNotification();
  Notification push = PushNotification();

  email.send();
  sms.send();
  push.send();

  // Polymorphism with Abstract Classes
  processPayment(CreditCardPayment(), 1000);

  processPayment(PayPalPayment(), 2000);

  processPayment(MobileBankingPayment(), 500);

  // Compile-Time Polymorphism (Generics)
  Box<int> intBox = Box(100);
  Box<String> stringBox = Box("Hello");

  intBox.show();
  stringBox.show();
}

// Polymorphism is an OOP concept where a parent reference can point to different child objects, and the appropriate overridden method is executed at runtime.\
