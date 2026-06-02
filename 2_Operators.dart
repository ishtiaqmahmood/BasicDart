void main() {
    int a = 10;
    int b = 5;

    // Arithmetic operators
    print("a + b = ${a + b}"); // Addition
    print("a - b = ${a - b}"); // Subtraction
    print("a * b = ${a * b}"); // Multiplication
    print("a / b = ${a / b}"); // Division
    print("a % b = ${a % b}"); // Modulus
    print("a ~/ b = ${a ~/ b}"); // Integer division
    print("a++ = ${a++}"); // Post-increment
    print("++a = ${++a}"); // Pre-increment
    print("a-- = ${a--}"); // Post-decrement
    print("--a = ${--a}"); // Pre-decrement

    // Bitwise operators
    print("a & b = ${a & b}"); // Bitwise AND
    print("a | b = ${a | b}"); // Bitwise OR
    print("a ^ b = ${a ^ b}"); // Bitwise XOR
    print("~a = ${~a}"); // Bitwise NOT
    print("a << 1 = ${a << 1}"); // Left shift
    print("a >> 1 = ${a >> 1}"); // Right shift

    // Assignment operators
    int c = 0;
    c += a; // c = c + a
    print("c += a: $c");
    c -= b; // c = c - b
    print("c -= b: $c");
    c *= a; // c = c * a
    print("c *= a: $c");
    c ~/= b; // c = c ~/ b
    print("c ~/= b: $c");
    c %= a; // c = c % a
    print("c %= a: $c");
    int? d = null;
    d ??= 20; // d = d ?? 20 (assign 20 to d if d is null)
    print("d ??= 20: $d");

    // Comparison operators
    print("a == b: ${a == b}"); // Equal to
    print("a != b: ${a != b}"); // Not equal to
    print("a > b: ${a > b}");   // Greater than
    print("a < b: ${a < b}");   // Less than
    print("a >= b: ${a >= b}"); // Greater than or equal to
    print("a <= b: ${a <= b}"); // Less than or equal to

    // Logical operators
    bool x = true;
    bool y = false;
    print("x && y: ${x && y}"); // Logical AND
    print("x || y: ${x || y}"); // Logical OR
    print("!x: ${!x}");         // Logical NOT

    // Type test operators
    print("a is int: ${a is int}"); // Type check
    print("a is! String: ${a is! String}"); // Negated type check

    // Equality operators
    print("a == b: ${a == b}"); // Equality
    print("a != b: ${a != b}"); // Inequality

    // Relational operators
    print("a > b: ${a > b}");   // Greater than
    print("a < b: ${a < b}");   // Less than
    print("a >= b: ${a >= b}"); // Greater than or equal to
    print("a <= b: ${a <= b}"); // Less than or equal to

    // Conditional operator
    String result = (a > b) ? "a is greater than b" : "a is not greater than b";
    print("Conditional operator result: $result");

    print("null-aware operator: ${d ?? "d is null"}"); // Null-aware operator

    // Cascade notation
    var buffer = StringBuffer()
        ..write("Hello")
        ..write(" ")
        ..write("Dart");
    print("Cascade notation result: ${buffer.toString()}"); 
}