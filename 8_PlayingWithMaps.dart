void main() {
    // Type-inferred
    var myMap = {
        "name": "Alice",
        "age": 30,
        "isStudent": false
    };

    // Explicitly typed
    Map<String, dynamic> anotherMap = {
        "name": "Bob",
        "age": 25,
        "isStudent": true
    };

    // Empty map
    Map<String, String> emptyMap = {};  

    print("myMap: $myMap");
    print("anotherMap: $anotherMap");
    print("emptyMap: $emptyMap");


    var o = {'a': 1, 'b': 2, 'c': 3};
    print("Keys: ${o.keys}"); // Output: (a, b, c)
    print("Values: ${o.values}"); // Output: (1, 2, 3)
    print("Entries: ${o.entries}"); // Output: (MapEntry(a: 1), MapEntry(b: 2), MapEntry(c: 3))
    print("Length: ${o.length}"); // Output: 3
    print("Is empty: ${o.isEmpty}"); // Output: false
    print("Is not empty: ${o.isNotEmpty}"); // Output: true

    // crud operations on map
    var m = <String, int>{};

    // Create / Update
    m['score'] = 100;
    m.addAll({'x': 1, 'y': 2});
    m.putIfAbsent('z', () => 99);   // only adds if key missing

    // Read
    m['score'];                      // 100
    m['missing'];                    // null (no error)
    m.containsKey('score');          // true
    m.containsValue(100);            // true

    // Delete
    m.remove('score');               // removes key
    m.removeWhere((k, v) => v < 5); // conditional remove
    m.clear();  


    // Iterating over a map
   
    // Using forEach
    var map = {'a': 1, 'b': 2, 'c': 3};
    map.forEach((key, value) {
        print('$key: $value');
    });

    // Using for-in loop
    for (var entry in map.entries) {
        print('${entry.key}: ${entry.value}');
    }

    // Using keys and values
    for (var key in map.keys) {
        print('Key: $key');
    }   
    for (var value in map.values) {
        print('Value: $value');
    }

    // Transforming a map
    var original = {'a': 1, 'b': 2, 'c': 3};
    var transformed = original.map((key, value) => MapEntry(key.toUpperCase(), value * 10));
    print(transformed); // Output: {A: 10, B: 20, C : 30}

    // Filtering a map
    var filtered = original.entries.where((entry) => entry.value > 1).map((entry) => MapEntry(entry.key, entry.value));
    print(filtered); // Output: {b: 2, c: 3}

    // Merging maps
    var map1 = {'a': 1, 'b': 2};
    var map2 = {'b': 3, 'c': 4};
    var merged = {...map1, ...map2}; // map2 values will overwrite map1 values for duplicate keys
    print(merged); // Output: {a: 1, b: 3, c: 4}

    // Null-aware access
    Map<String, String>? nullableMap;
    print(nullableMap?['key']); // Output: null (no error)


   // Map with non-string keys
    var nonStringKeyMap = {1: 'one', 2: 'two', 3: 'three'};
    print(nonStringKeyMap); // Output: {1: one, 2: two, 3: three}

    // nested maps
    var nestedMap = {
        'person1': {'name': 'Alice', 'age': 30},
        'person2': {'name': 'Bob', 'age': 25}
    };  
    print(nestedMap); // Output: {person1: {name: Alice, age: 30}, person2: {name: Bob, age: 25}}
    print(nestedMap['person1']?['name']); // Output: Alice

}