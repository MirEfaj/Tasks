import 'dart:collection'; // For SplayTreeMap used in sorting maps

void main() {
  demoBasicMapCreation();
  demoAddingRemovingEntries();
  demoAccessingEntries();
  demoIteratingEntries();
  demoMapFunctions();
  demoAdvancedMapOperations();
  demoNestedMap();
  demoImmutableMap();

  var person1 = {
    'name' : 'Mir Efaj',
    'Age'  : 24,
    'Address': {
      'City' :' Dhaka',
      'postcode' : 1212,
      'road': "Goran 8 no"
    }
  };
  print(person1);                             // {name: Mir Efaj, Age: 24, Address: {City:  Dhaka, postcode: 1212, road: Goran 8 no}}
  print(person1['name']);                     //  Mir Efaj
  print(person1['Address']);                  // {City:  Dhaka, postcode: 1212, road: Goran 8 no}
  person1['Natoinality'] = 'Bangladesh';
  print(person1);                            // {name: Mir Efaj, Age: 24, Address: {City:  Dhaka, postcode: 1212, road: Goran 8 no}, Natoinality: Bangladesh}
  person1['Natoinality'] = 'USA';
  print(person1);                           // updated Natoinality  {name: Mir Efaj, Age: 24, Address: {City:  Dhaka, postcode: 1212, road: Goran 8 no}, Natoinality: USA}
  print(person1.keys);                     // (name, Age, Address, Natoinality)
  print(person1.values);                   // (Mir Efaj, 24, {City:  Dhaka, postcode: 1212, road: Goran 8 no}, USA)
  print(person1.length);                     // 4
  print(person1.isEmpty); //false
  print(person1.isNotEmpty); //true
  print(person1.containsKey('Address')); // true
  print(person1.containsValue('road')); // false

  var person2 = {
    'Friend': 'Sultan',
    'FHome' : '26 WestBangla',
    'Fexpe': '7 years',
    'Subject' : 'CSE',
    'CGPA' : 3.80,
  };

  person1.addAll(person2);  //Merge or Add multiple value;
  print(person1);    //{name: Mir Efaj, Age: 24, Address: {City:  Dhaka, postcode: 1212, road: Goran 8 no}, Natoinality: USA, Friend: Sultan, FHome: 26 WestBangla, Fexpe: 7 years, Subject: CSE, CGPA: 3.8}

  var KeyList = person1.keys.toList(); //[name, Age, Address, Natoinality, Friend, FHome, Fexpe, Subject, CGPA]
  print(KeyList);
  var ValueList = person1.values.toList(); // [Mir Efaj, 24, {City:  Dhaka, postcode: 1212, road: Goran 8 no}, USA, Sultan, 26 WestBangla, 7 years, CSE, 3.8]
  print(ValueList);
}


//...........................................................................................................................................................
// A. Basic Map Creation
void demoBasicMapCreation() {
  print("----- Basic Map Creation -----");
  // Creating a map literal
  Map<String, int> ages = {
    "Alice": 30,
    "Bob": 25,
    "Charlie": 35,
  };
  print("Initial map: $ages");   //Initial map: {Alice: 30, Bob: 25, Charlie: 35}
}

// B. Adding and Removing Map Entries
void demoAddingRemovingEntries() {
  print("\n----- Adding and Removing Entries -----");
  Map<String, String> capitals = {};

  // Adding entries
  capitals["USA"] = "Washington D.C.";
  capitals["France"] = "Paris";
  capitals["Japan"] = "Tokyo";
  print("Map after adding entries: $capitals"); // Map after adding entries: {USA: Washington D.C., France: Paris, Japan: Tokyo}

  // Removing an entry
  capitals.remove("France");
  print("After removing 'France': $capitals");   //After removing 'France': {USA: Washington D.C., Japan: Tokyo}

  // Updating an entry using update (with ifAbsent)
  capitals.update("Japan", (value) => "Kyoto", ifAbsent: () => "Unknown");
  print("After updating 'Japan': $capitals");

  // Adding an entry only if it doesn't exist using putIfAbsent
  capitals.putIfAbsent("Germany", () => "Berlin");
  print("After putIfAbsent 'Germany': $capitals");
}

// C. Accessing Map Entries
void demoAccessingEntries() {
  print("\n----- Accessing Map Entries -----");
  Map<String, int> scores = {"Alice": 85, "Bob": 90, "Charlie": 78};

  // Accessing by key
  print("Alice's score: ${scores["Alice"]}");

  // Checking if a key exists
  if (scores.containsKey("David")) {
    print("David's score: ${scores["David"]}");
  } else {
    print("David is not in the map.");
  }

  // Getting all keys and values
  print("Keys: ${scores.keys}");
  print("Values: ${scores.values}");
}

// D. Iterating Over Map Entries
void demoIteratingEntries() {
  print("\n----- Iterating Over Map Entries -----");
  Map<String, double> products = {"Apple": 1.99, "Banana": 0.99, "Cherry": 2.99};

  // Using forEach
  products.forEach((key, value) {
    print("$key: \$$value");
  });

  // Using entries property
  for (var entry in products.entries) {
    print("Product: ${entry.key}, Price: \$${entry.value}");
  }
}

// E. Map Functions: updateAll, map, etc.
void demoMapFunctions() {
  print("\n----- Map Functions -----");
  Map<String, int> inventory = {"Apples": 10, "Bananas": 20, "Cherries": 15};

  // updateAll: Increase each count by 5
  inventory.updateAll((key, value) => value + 5);
  print("After updateAll: $inventory");

  // map: Create a new map with modified values (e.g., applying a discount)
  var discountedInventory = inventory.map((key, value) => MapEntry(key, value - 2));
  print("After map operation (discount applied): $discountedInventory");
}

// F. Advanced Map Operations
void demoAdvancedMapOperations() {
  print("\n----- Advanced Map Operations -----");

  // Creating a map from an iterable using Map.fromIterable
  List<String> fruits = ["apple", "banana", "cherry"];
  Map<String, int> fruitLengths = Map.fromIterable(
    fruits,
    key: (item) => item,
    value: (item) => (item as String).length,
  );
  print("Map from iterable (fruit lengths): $fruitLengths");

  // Merging two maps
  Map<String, int> map1 = {"a": 1, "b": 2};
  Map<String, int> map2 = {"b": 3, "c": 4};
  // Merging with addAll (map2's entry for 'b' overrides map1's)
  Map<String, int> mergedMap = {}..addAll(map1)..addAll(map2);
  print("Merged map: $mergedMap");

  // Sorting map by keys using SplayTreeMap
  var sortedMap = SplayTreeMap<String, int>.from(mergedMap);
  print("Sorted map by keys: $sortedMap");

  // Filtering a map: Remove entries where value is less than 3
  Map<String, int> filteredMap = Map.from(mergedMap);
  filteredMap.removeWhere((key, value) => value < 3);
  print("Filtered map (values >= 3): $filteredMap");
}

// G. Nested Map Example
void demoNestedMap() {
  print("\n----- Nested Map Example -----");
  Map<String, dynamic> person = {
    "name": "Alice",
    "age": 30,
    "address": {
      "street": "123 Main St",
      "city": "Wonderland",
      "zip": "12345"
    }
  };
  print("Nested map: $person");
  print("City: ${person['address']['city']}");
}

// H. Immutable Map Example
void demoImmutableMap() {
  print("\n----- Immutable Map Example -----");
  // Creating an immutable map using Map.unmodifiable
  final Map<String, int> modifiableMap = {"x": 10, "y": 20};
  final Map<String, int> immutableMap = Map.unmodifiable(modifiableMap);
  print("Immutable map: $immutableMap");
  // Attempting to modify immutableMap here would result in a runtime error.
}
