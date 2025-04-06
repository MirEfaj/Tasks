import 'dart:io';
import 'dart:math';

void main() {
  // Basic List Operations
  demoBasicListOperations();

  // Accessing Elements in a List
  demoAccessingElements();

  // Looping Through a List
  demoLoopingThroughList();

  // Checking if a List Contains an Element
  demoCheckingContains();

  // Sorting a List
  demoSortingList();

  // List Map & Filter Operations
  demoListMapFilter();

  // List Transformation (Map & Reduce)
  demoMapReduce();

  // Set Operations on Lists
  demoSetOperations();

  // Flatten a Nested List
  demoFlattenNestedList();

  // Convert a List to a Map
  demoListToMap();

  // Immutable List (Fixed-length)
  demoImmutableList();

  // Generate a List Dynamically
  demoGenerateList();

  // Shuffling a List (Random Order)
  demoShufflingList();
}

void demoBasicListOperations() {
  print("----- Basic List Operations -----");
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Initial list: $numbers");                   // Initial list: [1, 2, 3, 4, 5]

  numbers.add(6);
  print("After add(6): $numbers");                  // After add(6): [1, 2, 3, 4, 5, 6]

  numbers.addAll([7, 8, 9]);
  print("After addAll([7, 8, 9]): $numbers");      // After addAll([7, 8, 9]): [1, 2, 3, 4, 5, 6, 7, 8, 9]

  numbers.insert(0, 0);
  print("After insert(0, 0) : $numbers");      //  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  numbers.insertAll(10, [10, 11,12, 13]);
  print("After insertAll(10, 11,12, 13 ) : $numbers");      //   [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  numbers.remove(3);
  print("After remove(3): $numbers");              //  [0, 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  numbers.removeRange(2, 5);
  print("After removeRange(2, 5): $numbers");              //  [0, 1, 6, 7, 8, 9, 10, 11, 12, 13]

  numbers.removeAt(2);
  print("After removeAt(2): $numbers");         //  [0, 1, 7, 8, 9, 10, 11, 12, 13]

  numbers[7] = 88;
  print("After Updated numbers[7] = 88 : $numbers");         //  [0, 1, 7, 8, 9, 10, 11, 88, 13]

  numbers.sort();
  print("After sort : $numbers");         //  After sort : [0, 1, 7, 8, 9, 10, 11, 13, 88]

  print("After reversed : ${numbers.reversed}");         //  After reversed : (88, 13, 11, 10, 9, 8, 7, 1, 0)

  print('Lenght of the list : ${numbers.length}');

  //print(numbers.clear());

  print("indexOf(2) is : ${numbers.indexOf(2)}\n"); //indexOf(2) is : -1




}

void demoAccessingElements() {
  print("----- Accessing Elements in a List -----");
  List<String> names = ["Alice", "Bob", "Charlie"];
  print("Element at index 0: ${names[0]}");         // Element at index 0: Alice
  print("First element: ${names.first}");           // First element: Alice
  print("Last element: ${names.last}");             // Last element: Charlie
  print("Length of list: ${names.length}\n");       // Length of list: 3
  print(names.isNotEmpty);
  print(names.isEmpty);
}

void demoLoopingThroughList() {
  print("----- Looping Through a List -----");
  List<int> numbers = [10, 20, 30, 40];

  print("Using for loop:");
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);                          //  Using for loop: 10 20 30 40
  }

  print("Using forEach loop:");
  numbers.forEach((num) => print(num));        // Using forEach loop: 10 20 30 40

  print("Using for-in loop:");
  for (var num in numbers) {
    print(num);
  }
  print("");                                  // //Using for-in loop: 10 20 30 40
}

void demoCheckingContains() {
  print("----- Checking if a List Contains an Element -----");
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print("Contains 'Banana': ${fruits.contains("Banana")}");             // Contains 'Banana': true
  print("Index of 'Cherry': ${fruits.indexOf("Cherry")}");              // Index of 'Cherry': 2
  print("Index of 'Mango' (not found): ${fruits.indexOf("Mango")}\n");  // Index of 'Mango' (not found): -1
}

void demoSortingList() {
  print("----- Sorting a List -----");
  List<int> numbers = [4, 2, 7, 1, 9];
  numbers.sort();
  print("Sorted in ascending order: $numbers");               // Sorted in ascending order: [1, 2, 4, 7, 9]

 // List<int> descendingNumbers = numbers.reversed.toList();
  numbers.sort((a, b) => b.compareTo(a));
  print("Sorted in descending order: $numbers\n");           // Sorted in descending order: [9, 7, 4, 2, 1]
}

void demoListMapFilter() {
  print("----- List Map & Filter Operations -----");
  List<int> numbers = [1, 2, 3, 4, 5];

  var squared = numbers.map((num) => num * num).toList();
  print("Squared values: $squared");                          // Squared values: [1, 4, 9, 16, 25]

  var evenNumbers = numbers.where((num) => num.isEven).toList();
  print("Even numbers: $evenNumbers\n");                          // Even numbers: [2, 4]
}

void demoMapReduce() {
  print("----- List Transformation (Map & Reduce) -----");
  List<int> numbers = [1, 2, 3, 4, 5];

  var doubled = numbers.map((num) => num * 2).toList();
  print("Doubled values: $doubled");

  int sum = numbers.reduce((a, b) => a + b);
  print("Sum of all numbers: $sum\n");
}

void demoSetOperations() {
  print("----- Set Operations on Lists -----");
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [4, 5, 6, 7, 8];

  var union = {...list1, ...list2}.toList();
  print("Union: $union");                                                  // Union: [1, 2, 3, 4, 5, 6, 7, 8]

  var intersection = list1.toSet().intersection(list2.toSet()).toList();
  print("Intersection: $intersection");                                    // Intersection: [4, 5]

  var difference = list1.toSet().difference(list2.toSet()).toList();
  print("Difference (list1 - list2): $difference\n");                       // Difference (list1 - list2): [1, 2, 3]
}

void demoFlattenNestedList() {
  print("----- Flatten a Nested List -----");
  List<List<int>> nestedList = [
    [1, 2, 3],
    [4, 5],
    [6, 7, 8]
  ];

  var flattened = nestedList.expand((e) => e).toList();
  print("Flattened list: $flattened\n");                 // Flattened list: [1, 2, 3, 4, 5, 6, 7, 8]
}

void demoListToMap() {
  print("----- Convert a List to a Map -----");
  List<String> students = ["Alice", "Bob", "Charlie"];
  List<int> scores = [85, 90, 78];

  Map<String, int> studentScores = Map.fromIterables(students, scores);
  print("Student scores: $studentScores\n");                // Student scores: {Alice: 85, Bob: 90, Charlie: 78}
}

void demoImmutableList() {
  print("----- Immutable List (Fixed-length) -----");
  var fixedList = List<int>.filled(5, 0, growable: false);  // Fixed-length list: [0, 0, 0, 0, 0]
  print("Fixed-length list: $fixedList\n");
}

void demoGenerateList() {
  print("----- Generate a List Dynamically -----");
  List<int> squares = List.generate(5, (index) => (index + 1) * (index + 1));
  print("Squares: $squares\n");                             // Squares: [1, 4, 9, 16, 25]
}

void demoShufflingList() {
  print("----- Shuffling a List (Random Order) -----");
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.shuffle(Random());
  print("Shuffled list: $numbers\n");                       // Shuffled list: [2, 3, 4, 1, 5]
}
