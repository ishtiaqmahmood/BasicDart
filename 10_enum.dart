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
}

enum Color { red, green, blue }
