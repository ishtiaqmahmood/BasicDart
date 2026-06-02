void main() {
    int age = 30;
    print("My age is $age years old.");
    double height = 1.75;
    print("My height is $height meters.");
    String name = "John";
    print("My name is $name.");
    bool isStudent = true;
    print("Am I a student? $isStudent");

    // list (ordered collection of items)
    List fruits = ["Apple", "Banana", "Orange"];
    print("Fruits: $fruits");

    // map (key-value pairs)
    Map<String, dynamic>person = {
        "name": "Alice",
        "age": 25,
        "isStudent": false
    };
    print("Person: $person");

    // set (unordered collection of unique items)
    Set<String> colors = {"Red", "Green", "Blue"};
    print("Colors: $colors");

    // runes (Unicode code points)
    String heart = "❤️";
    print("Heart: $heart");

    Runes input = Runes('\u{1f49b}');
    print("Yellow Heart: ${String.fromCharCodes(input)}");

    // symbols (compile-time constants)
    Symbol symbol = #mySymbol;
    print("Symbol: $symbol");

    // var (type inference and dynamic typing and mutable variable)
    var message = "Hello, Dart!";
    print("Message: $message");
    message = "Hi"; //  you can't change the type, only the value
    print("Message: $message");

    // final (immutable variable, must be initialized at declaration)
    final String country = "USA";
    print("Country: $country");
    // country = "Canada"; // This will cause an error because final variables cannot be reassigned

    

}