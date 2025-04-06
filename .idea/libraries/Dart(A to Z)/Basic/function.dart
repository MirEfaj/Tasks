import 'dart:io';

void main() {
  // test cases
  area(2,5);
  area_with_option(1,2,3);
  area_with_option(1,2);
  area_with_arrow(2,2);
  area_with_default_value();
  area_with_default_value(length: 2);
  area_with_default_value(wigth: 10);


  // -------------------------
  // Basic Function
  // -------------------------
  // Calls a simple function that prints a message.
  print("----- Basic Function -----");
  basicFunction();

  // -------------------------
  // Function with Parameters and Return Value
  // -------------------------
  // Calls a function that takes two numbers, adds them, and returns the sum.
  print("\n----- Function with Parameters and Return Value -----");
  int sum = addNumbers(5, 7);
  print("Sum of 5 and 7: $sum");

  // -------------------------
  // Function with Optional Positional Parameters
  // -------------------------
  // Calls a function that greets the user. The greeting message is optional.
  print("\n----- Function with Optional Positional Parameters -----");
  greet("Alice");                     // Uses default greeting.
  greet("Bob", "Good evening");       // Uses custom greeting.

  // -------------------------
  // Function with Named Parameters
  // -------------------------
  // Calls a function that displays user information using named parameters.
  print("\n----- Function with Named Parameters -----");
  displayUserInfo(name: "Charlie", age: 25);
  displayUserInfo(name: "Diana", age: 30, country: "USA");

  // -------------------------
  // Lambda (Arrow) Function
  // -------------------------
  // Demonstrates a concise lambda function to compute the square of a number.
  print("\n----- Lambda (Arrow) Function -----");
  int result = square(4);
  print("Square of 4: $result");

  // -------------------------
  // Recursive Function (Factorial)
  // -------------------------
  // Uses recursion to compute the factorial of a number.
  print("\n----- Recursive Function (Factorial) -----");
  int n = 5;
  print("Factorial of $n: ${factorial(n)}");

  // -------------------------
  // Higher-Order Function
  // -------------------------
  // A higher-order function that applies a given function to each element in a list.
  print("\n----- Higher-Order Function -----");
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> squaredNumbers = applyFunction(numbers, square);
  print("Squared numbers: $squaredNumbers");

  // -------------------------
  // Closure Example
  // -------------------------
  // Creates a multiplier function that captures a factor and uses it in a closure.
  print("\n----- Closure Example -----");
  var multiplier = createMultiplier(3);
  print("3 multiplied by 10: ${multiplier(10)}");
}

//........................Test case..................................................................


area(int length, int wigth){
  return print(length*wigth);
}

area_with_option(int length, int wigth,[int? height]){
  if(height != null){
    print("area_with_option is active");
  }
  else{
    print("area_with_option: ${length*wigth}");
  }
}

area_with_arrow(int length, int wigth,) => print("area_with_arrow: ${length*wigth}");

area_with_default_value({int length = 5, int wigth =5 }){
  return print(length*wigth);
}
// -----------------------------------------------------
// Example 1: Basic Function
// -----------------------------------------------------
// A simple function that prints a message.
void basicFunction() {
  print("Hello from basicFunction!");
}

// -----------------------------------------------------
// Example 2: Function with Parameters and Return Value
// -----------------------------------------------------
// Takes two integers, adds them, and returns the result.
int addNumbers(int a, int b) {
  return a + b;
}

// -----------------------------------------------------
// Example 3: Function with Optional Positional Parameters
// -----------------------------------------------------
// Greets a user. The second parameter is optional with a default value.
void greet(String name, [String greeting = "Hello"]) {
  print("$greeting, $name!");
}

// -----------------------------------------------------
// Example 4: Function with Named Parameters
// -----------------------------------------------------
// Displays user information. The parameters 'name' and 'age' are required.
// 'country' is optional with a default value.
void displayUserInfo({required String name, required int age, String country = "Unknown"}) {
  print("Name: $name, Age: $age, Country: $country");
}

// -----------------------------------------------------
// Example 5: Lambda (Arrow) Function
// -----------------------------------------------------
// A concise function that returns the square of a number.
int square(int x) => x * x;

// -----------------------------------------------------
// Example 6: Recursive Function (Factorial)
// -----------------------------------------------------
// Uses recursion to compute the factorial of n.
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// -----------------------------------------------------
// Example 7: Higher-Order Function
// -----------------------------------------------------
// Takes a list and a function, applies the function to each element, and returns a new list.
List<int> applyFunction(List<int> list, int Function(int) func) {
  List<int> result = [];
  for (var element in list) {
    result.add(func(element));
  }
  return result;
}

// -----------------------------------------------------
// Example 8: Closure Example
// -----------------------------------------------------
// Returns a multiplier function that uses the captured 'factor'.
Function createMultiplier(int factor) {
  // The returned function takes an integer and multiplies it by the captured 'factor'.
  return (int value) => factor * value;
}
