// Dart Null Safety Examples: Basic to Advanced

void main() {
  // -----------------------------------------------------
  // 1. Basic Null Safety: Non-nullable vs. Nullable Variables
  // -----------------------------------------------------
  int nonNullableInt = 10; // Cannot be null.
  // Uncommenting the next line would cause a compile-time error:
  // nonNullableInt = null;

  int? nullableInt = 20; // Nullable variable that can hold an int or null.
  print("Non-nullable int: $nonNullableInt"); //Non-nullable int: 10
  print("Nullable int before null assignment: $nullableInt");              //Nullable int before null assignment: 20

  nullableInt = null; // Allowed because it's declared as nullable.
  print("Nullable int after null assignment: $nullableInt\n");            //Nullable int after null assignment: null

  // -----------------------------------------------------
  // 2. Null-Aware Operators: '??' (Default Value)
  // -----------------------------------------------------
  String? nullableString; // Initially null.
  // If nullableString is null, use "Default Value".
  String nonNullString = nullableString ?? "Default Value";
  print("Using '??' operator: $nonNullString\n");

  // -----------------------------------------------------
  // 3. Null-Aware Method Invocation: '?.'
  // -----------------------------------------------------
  String? maybeString = "Hello, Dart!";
  // Safely access the length property. If maybeString is null, the result is null.
  int? length = maybeString?.length;
  print("Null-aware method invocation when not null: Length = $length");

  // Now set maybeString to null.
  maybeString = null;
  length = maybeString?.length; // This will now be null.
  print("Null-aware method invocation when null: Length = $length\n");

  // -----------------------------------------------------
  // 4. Null-Aware Assignment: '??='
  // -----------------------------------------------------
  String? greeting;
  // Assign "Hi there!" only if greeting is currently null.
  greeting ??= "Hi there!";
  print("Using '??=' operator: $greeting\n");

  // -----------------------------------------------------
  // 5. Late Initialization with the 'late' Keyword
  // -----------------------------------------------------
  // 'late' allows you to declare a non-nullable variable that is initialized later.
  late String description;
  // Some operations can be performed here...
  description = "This variable is initialized later.";
  print("Late initialization: $description\n");

  // -----------------------------------------------------
  // 6. Null Safety in Function Parameters and Return Values
  // -----------------------------------------------------
  // The add() function below accepts a nullable second parameter.
  print("Sum when second parameter is null: ${add(5, null)}");
  print("Sum when both parameters are non-null: ${add(5, 10)}\n");

  // -----------------------------------------------------
  // 7. Null Safety in Custom Classes
  // -----------------------------------------------------
  // Create a Person with a known name and a nullable age.
  Person person = Person("Alice", null);
  print("Person info: ${person.getInfo()}\n");

  // -----------------------------------------------------
  // 8. Null Safety with Generics (Advanced)
  // -----------------------------------------------------
  // A generic Box class that can hold a value of type T.
  Box<int> intBox = Box<int>(5);
  print("Box contains: ${intBox.content}");

  // A nullable instance of Box.
  Box<int>? nullableBox;
  // Safely access the content of nullableBox, providing a default message if null.
  print("Nullable Box contains: ${nullableBox?.content ?? "No content"}");
}

// -----------------------------------------------------
// Function: add
// Demonstrates handling a nullable parameter.
// Returns the sum of a and b, where b defaults to 0 if null.
// -----------------------------------------------------
int add(int a, int? b) {
  return a + (b ?? 0);
}

// -----------------------------------------------------
// Class: Person
// Demonstrates null safety in custom classes.
// The 'age' property is nullable.
// -----------------------------------------------------
class Person {
  String name;
  int? age; // Age may be unknown (null).

  Person(this.name, this.age);

  // Returns a description of the person, using a default if age is null.
  String getInfo() {
    return "$name is ${age ?? "of unknown age"} years old.";
  }
}

// -----------------------------------------------------
// Generic Class: Box<T>
// Demonstrates null safety with generics.
// The 'content' property is nullable to allow flexibility.
// -----------------------------------------------------
class Box<T> {
  T? content;

  Box(this.content);
}
