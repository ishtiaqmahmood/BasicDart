void main() {
    // Type-inferred
    var fruits = {'apple', 'banana', 'mango'};

    // Explicit type
    Set<String> colors = {'red', 'green', 'blue'};

    // Empty set (must use Set<> — {} alone creates a Map!)
    var empty = <String>{};
    var empty2 = Set<String>();

    // common set operations
    var a = {'apple', 'banana', 'mango'};
    var b = {'banana', 'grape', 'orange'};
    print("Union: ${a.union(b)}");           // {apple, banana, mango, grape, orange}
    print("Intersection: ${a.intersection(b)}"); // {banana}
    print("Difference: ${a.difference(b)}");   // {apple, mango}
    print("Symmetric Difference: ${a.difference(b).union(b.difference(a))}"); // {apple, mango, grape, orange}
    
    // common set methods
    var s = {'apple', 'banana', 'mango'};   
    print("Length: ${s.length}");             // 3
    print("Contains 'banana': ${s.contains('banana')}"); // true
    s.add('grape');                          // add an element
    print("After adding 'grape': $s");       // {apple, banana,
    s.remove('banana');                       // remove an element
    print("After removing 'banana': $s");     // {apple, mango, grape
    
    print("Is empty: ${s.isEmpty}");         // true
    print("Is not empty: ${s.isNotEmpty}");  // false
    print("first element: ${s.first}");         // throws error if set is empty
    print("last element: ${s.last}");          // throws error if set is empty

    s.clear();                               // remove all elements
    print("After clearing: $s");              // {}

    // Crud operations on set
    var mySet = <String>{};
    // Create / Update
    mySet.add('apple');
    mySet.addAll(['banana', 'mango']);
    // Read
    print(mySet.contains('banana')); // true
    // Delete
    mySet.remove('apple');
    mySet.removeWhere((item) => item.startsWith('b')); // removes 'banana'
    mySet.clear(); // removes all elements

    // Iterating over a set
    var set = {'apple', 'banana', 'mango'};
    // Using forEach
    set.forEach((item) {
        print(item);
    });
    // Using for-in loop
    for (var item in set) {
        print(item);
    }
    
    // No-duplicate elements in a set
    var duplicateSet = {'apple', 'banana', 'apple', 'mango'};
    print("Set with duplicates: $duplicateSet"); // Output: {apple, banana, mango}

    // transformation of set to list
    var mySet2 = {'apple', 'banana', 'mango'};
    var myList = mySet2.toList();
    print("Set: $mySet2");
    print("List: $myList");

    // transformation of set to map
    var mySet3 = {'apple', 'banana', 'mango'};
    var myMap = {for (var item in mySet3) item: item.length};
    print("Set: $mySet3");  
    print("Map: $myMap"); // Output: {apple: 5, banana: 6, mango: 5}


}
