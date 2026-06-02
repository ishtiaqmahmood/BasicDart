void main() {
    String a = "We";
    String b = "are";
    String c = "learning";
    String d = "Dart";

    // String concatenation
    String sentence = a + " " + b + " " + c + " " + d + ".";
    print(sentence);

    // String interpolation
    String stencence2 = "$a $b $c $d.";
    print(stencence2);

    // String interpolation with expressions
    String stencence3 = "$a $b ${c.toUpperCase()} $d.";
    print(stencence3);  

    // String literals
    String e = 'We' 'Are' 'Learning' 'Dart';
    print(e); // Output: WeAreLearningDart

    // Multiline string
    String multiline = '''This is a multiline
string in Dart.''';
    print(multiline);

    // Raw string (ignores escape sequences)
    String rawString = r'This is a raw string.\nNew line will not be created.';
    print(rawString);

    // String properties and methods
    String str = "Hello, Dart!";
    print("Length of str: ${str.length}"); // Length of the string
    print("Uppercase: ${str.toUpperCase()}"); // Convert to uppercase
    print("Lowercase: ${str.toLowerCase()}"); // Convert to lowercase
    print("Contains 'Dart': ${str.contains('Dart')}"); // Check if it contains a substring
    print("Substring (0, 5): ${str.substring(0, 5)}"); // Get a substring
    print("Index of 'Dart': ${str.indexOf('Dart')}"); // Get the index of a substring


    // List concatenation
    List<String> list1 = ["Hello", "Dart"];
    List<String> list2 = ["Welcome", "to", "Dart"];
    List<String> combinedList = [...list1, ...list2];
    print(combinedList);

    List<String> f = ['We', 'Are', 'Learning', 'Dart'];
    print(f.join(' ')); // Output: We Are Learning Dart
}