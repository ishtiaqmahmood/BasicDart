void main() {
  Color favoriteColor = Color.green;

  switch (favoriteColor) {
    case Color.red:
      print("Your favorite color is red.");
      break;
    case Color.green:
      print("Your favorite color is green.");
      break;
    case Color.blue:
      print("Your favorite color is blue.");
      break;
  }

  describe(Season.winter); // Very cold
}

// An enum (enumeration) is a special type that represents a fixed set of named constants. Use it when a variable can only be one of a limited set of values.
enum Color { red, green, blue }

enum Season { spring, summer, autumn, winter }

void describe(Season s) {
  switch (s) {
    case Season.spring:
      print('Flowers bloom');
      break;
    case Season.summer:
      print('Very hot');
      break;
    case Season.autumn:
      print('Leaves fall');
      break;
    case Season.winter:
      print('Very cold');
      break;
  }
}
