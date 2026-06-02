void main() {
    // Creating a list
    List<String> fruits = ['apple', 'banana', 'orange'];
    print("Fruits: $fruits");
    print("Fruit Length: ${fruits.length}");

    // Adding an element to the list
    fruits.add('grape');
    print("Fruits after adding grape: $fruits");

    // Adding multiple elements to the list
    fruits.addAll(['kiwi', 'melon']);
    print("Fruits after adding kiwi and melon: $fruits");

    // Inserting an element at a specific index
    fruits.insert(1, 'strawberry');
    print("Fruits after inserting strawberry at index 1: $fruits");

    // Updating an element at a specific index
    fruits[2] = 'blueberry';
    print("Fruits after updating index 2 to blueberry: $fruits");

    // replacing a range of elements
    fruits.replaceRange(3, 5, ['pear', 'peach']);   
    print("Fruits after replacing index 3 to 5 with pear and peach: $fruits");

    // Removing an element from the list
    fruits.remove('banana');
    print("Fruits after removing banana: $fruits");

    // Accessing elements by index
    print("First fruit: ${fruits[0]}");
    print("Last fruit: ${fruits[fruits.length - 1]}");

    // Checking if an element exists in the list
    if (fruits.contains('apple')) {
        print("Apple is in the list.");
    }

    // Getting the length of the list
    print("Number of fruits: ${fruits.length}");
}