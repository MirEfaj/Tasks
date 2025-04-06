import 'dart:io';

// Entry point: Calls various examples to demonstrate try-catch usage.
void main() {
  print("----- Basic try-catch Example -----");
  basicTryCatch();

  print("\n----- Multiple catch Blocks Example -----");
  multipleCatchExample();

  print("\n----- try-catch-finally Example -----");
  tryCatchFinallyExample();

  print("\n----- Nested try-catch Example -----");
  nestedTryCatchExample();

  print("\n----- Custom Exception Example -----");
  customExceptionExample();

  print("\n----- Asynchronous try-catch Example -----");
  asynchronousTryCatchExample();
}

// -----------------------------------------------------
// Example 1: Basic try-catch
// -----------------------------------------------------
// This example attempts to perform division by zero, which
// causes an exception that is caught and printed.
void basicTryCatch() {
  try {
    int result = 10 ~/ 0; // Throws IntegerDivisionByZeroException.
    print("Result: $result");
  } catch (e) {
    print("Caught an exception: $e");
  }
}

// -----------------------------------------------------
// Example 2: Multiple catch Blocks
// -----------------------------------------------------
// This example uses specific catch clauses to handle different
// types of exceptions. Here, it catches division by zero separately.
void multipleCatchExample() {
  try {
    int result = 10 ~/ 0;
    print("Result: $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero.");
  } catch (e) {
    print("Caught an exception: $e");
  }
}

// -----------------------------------------------------
// Example 3: try-catch-finally
// -----------------------------------------------------
// Demonstrates the use of a finally block, which always
// executes regardless of whether an exception is thrown.
void tryCatchFinallyExample() {
  try {
    print("Inside try block");
    int result = int.parse("Not a number"); // Throws FormatException.
    print("Result: $result");
  } on FormatException catch (e) {
    print("Caught a FormatException: $e");
  } catch (e) {
    print("Caught an exception: $e");
  } finally {
    print("Finally block executed regardless of exception occurrence.");
  }
}

// -----------------------------------------------------
// Example 4: Nested try-catch
// -----------------------------------------------------
// Shows nested try-catch blocks. The inner block handles its error
// and then throws a new exception, which is caught by the outer block.
void nestedTryCatchExample() {
  try {
    print("Outer try block");
    try {
      int result = 10 ~/ 0; // Throws division error.
      print("Result: $result");
    } catch (e) {
      print("Inner catch: $e");
      // Throwing a new exception from the inner catch block.
      throw FormatException("Error in inner block");
    }
  } catch (e) {
    print("Outer catch: $e");
  }
}

// -----------------------------------------------------
// Example 5: Custom Exception Handling
// -----------------------------------------------------
// Defines a custom exception and uses it within a function to
// throw an error when a negative value is encountered.
class NegativeValueException implements Exception {
  final String message;
  NegativeValueException(this.message);

  @override
  String toString() => "NegativeValueException: $message";
}

void checkValue(int value) {
  if (value < 0) {
    throw NegativeValueException("Value cannot be negative: $value");
  }
  print("Value is positive: $value");
}

void customExceptionExample() {
  try {
    checkValue(-5);
  } on NegativeValueException catch (e) {
    print("Caught a custom exception: $e");
  } catch (e) {
    print("Caught an exception: $e");
  }
}

// -----------------------------------------------------
// Example 6: Asynchronous try-catch
// -----------------------------------------------------
// Demonstrates error handling in an asynchronous context using async/await.
Future<void> asynchronousTryCatchExample() async {
  try {
    await Future.delayed(Duration(seconds: 1));
    // Simulate an error in an asynchronous operation.
    throw Exception("Asynchronous error occurred");
  } catch (e) {
    print("Caught asynchronous exception: $e");
  }
}
