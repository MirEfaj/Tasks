void main(){
  Set<int> numbers = {1,2,3,4,5};
  print("Initial set of numbers: $numbers");  //Initial set of numbers: {1, 2, 3, 4, 5}

  // Adding an element to the set.
  numbers.add(6);
  print("After adding 6: $numbers"); // After adding 6: {1, 2, 3, 4, 5, 6}

  // Adding pultiple element to the set.
  numbers.addAll({7,8,9,10,11});
  print("After adding 7,8,9, 10: $numbers"); // After adding 7,8,9: {1, 2, 3, 4, 5, 6, 7, 8, 9 , 10 , 11}

  // // Trying to add a duplicate element (won't change the set).
  numbers.add(5);
  print("After trying to add duplicate 5: $numbers");  //After trying to add duplicate 5: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10 , 11}

  // Removing an element to the set.
  numbers.remove(11);
  print('After removing 11 : $numbers'); //After removing 11 : {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

  // Removing multiple element to the set.
  numbers.removeAll({1,3,5,7,9});
  print('After removing odd 1,3,5,7,9 numbers  : $numbers'); //After removing odd numbers : {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

  print(numbers.contains(10)); //true
  print("Element at first index(0) is : ${numbers.elementAt(0)}"); //Element at first index(0) is : 2

  // Iterating over the set.
  print("Iterating over the set:");  // Iterating over the set: 2  4  6  8 10 (Numbers shows in vertically)
  for (var number in numbers) {
    print(number);
  }

  numbers.clear();
  print(numbers); // {}

// Creating two sets for set operations.
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8};

  // Union: Combines elements from both sets (duplicates removed).
  Set<int> unionSet = setA.union(setB);
  print("Union of setA and setB: $unionSet");               //Union of setA and setB: {1, 2, 3, 4, 5, 6, 7, 8}

  // Intersection: Elements common to both sets.
  Set<int> intersectionSet = setA.intersection(setB);
  print("Intersection of setA and setB: $intersectionSet"); // Intersection of setA and setB: {4, 5}

  // Difference: Elements in setA that are not in setB.
  Set<int> differenceSet = setA.difference(setB);
  print("Difference (setA - setB): $differenceSet");      //Difference (setA - setB): {1, 2, 3}

  // Symmetric Difference: Elements that are in either set, but not in both.
  // (Calculated by taking the difference between the union and the intersection.)
  Set<int> symmetricDifference = unionSet.difference(intersectionSet);            //Symmetric Difference of setA and setB: {1, 2, 3, 6, 7, 8}
  print("Symmetric Difference of setA and setB: $symmetricDifference");


  // ============================
  // Converting Collections to Sets
  // ============================

  // Creating a list with duplicate numbers.
  List<int> numberList = [1, 2, 2, 3, 4, 4, 5];
  // Converting list to a set to remove duplicates.
  Set<int> uniqueNumbers = Set.from(numberList);
  print("Unique numbers from the list: $uniqueNumbers");

  // ============================
  // Filtering and Mapping Sets
  // ============================

  // Filtering the set to include only even numbers.
  Set<int> evenNumbers = uniqueNumbers.where((n) => n % 2 == 0).toSet();
  print("Even numbers from uniqueNumbers: $evenNumbers");

  // Mapping each number to a string.
  Set<String> numberStrings = uniqueNumbers.map((n) => "Number: $n").toSet();
  print("Mapped set to strings: $numberStrings");

  // ============================
  // Checking and Clearing a Set
  // ============================

  // Creating an empty set of integers.
  Set<int> emptySet = {};
  print("Is emptySet empty? ${emptySet.isEmpty}");

  // Adding multiple elements to the set.
  emptySet.addAll({10, 20, 30});
  print("emptySet after adding elements: $emptySet");

  // Clearing all elements from the set.
  emptySet.clear();
  print("emptySet after clearing: $emptySet");

  // ============================
  // Using Sets with Custom Objects
  // ============================

  // Creating a set of Person objects.
  // Note: Duplicate objects (based on equality) will not be added twice.
  Set<Person> people = {
    Person("Alice", 30),
    Person("Bob", 25),
    Person("Alice", 30) // Duplicate based on name and age.
  };
  print("Set of people with custom objects: $people");

  /*Custom Class Declaration:
The Person class is defined outside the main() function to ensure proper scope and reuse. The == operator and hashCode
are overridden so that two Person objects with the same name and age are treated as duplicates in a set.

Checking and Clearing a Set:
An empty set is created and checked for emptiness. Elements are added using addAll(), and then the set is cleared with clear().

Using Sets with Custom Objects:
A set of Person objects is created. When a duplicate (an object with the same property values) is added, it is ignored, so only unique objects are stored. */
}  //outside  main function

// Dart Program: Checking and Clearing a Set and Using Sets with Custom Objects

// Defining a custom class Person.
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Override equality operator to consider two Person objects equal
  // if they have the same name and age.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              age == other.age;

  // Override hashCode to ensure that equal objects produce the same hash.
  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  // Provide a readable string representation.
  @override
  String toString() => 'Person(name: $name, age: $age)';
}