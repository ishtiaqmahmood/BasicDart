void main() {
    // Compile-time error: This will cause a compile-time error because the variable 'x' is not defined.
    // print(x);

    // Runtime error: This will cause a runtime error because we are trying to divide by zero.
    int a = 10;
    int b = 0;
    // Uncommenting the line below will cause a runtime error (division by zero).
    print(a ~/ b);    
}