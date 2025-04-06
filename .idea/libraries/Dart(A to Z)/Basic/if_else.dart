// A comprehensive Dart codebase demonstrating various if-else examples

import 'dart:io'; // For user input (CLI) example

void test(){
  print('Enter your traveling amount :');
  int amount = int.parse(stdin.readLineSync()!);
  if (amount >= 1000) {
    print("Ame car e jbo");
  } else if (amount >= 500) {
    print("ame Bike jbo");
  } else if (amount >= 200) {
    print("ame rskw jbo");
  } else {
    print("ame hete jbo");
  }
}

void test2(){
  // ternary condition
  print('Enter your Marks :');
  int marks = int.parse(stdin.readLineSync()!);

  marks > 80
      ?  print('You get A+')
      : (marks > 70
      ? print('You get A')
      : ( marks > 60
      ?  print('You get A-')
      : ( marks > 50
      ? print('You get B')
      : ( marks > 40
      ? print('You get C')
      : ( marks > 33
      ?  print('You get D')
      :  print('You get F')) ) ) ) );
}

void test3(){
  print("Enter Your User name:");
  String? username = stdin.readLineSync();

  print("Enter Your Password:");
  String? password = stdin.readLineSync();

  if (username == 'Mir Efaj' && password == '123456') {
    print("Login Successful");
  } else if (username == 'Mir Efaj' && password != '123456') {
    print("User name is correct \n Try correct password");
  } else if (username != 'Mir Efaj' && password == '123456') {
    print("password is correct \n Try correct username");
  } else {
    print("Wrong info...! Try again");
  }
}



// -------------------------
// Example 1: Basic `if` Statement
// -------------------------
// Checks a simple condition and prints a message if true.
void basicIfExample() {
  int number = 10;
  // If number is greater than 5, print a message.
  if (number > 5) {
    print("Basic if: Number is greater than 5");
  }
}

// -------------------------
// Example 2: `if-else` Statement
// -------------------------
// Provides an alternative branch if the condition is false.
void ifElseExample() {
  int number = 3;
  // If number is greater than 5, print one message; otherwise, print another.
  if (number > 5) {
    print("if-else: Number is greater than 5");
  } else {
    print("if-else: Number is 5 or less");
  }
}

// -------------------------
// Example 3: `if-else if-else` Chain
// -------------------------
// Checks multiple conditions in order.
void ifElseIfElseExample() {
  int number = 5;
  // Check for multiple conditions: greater than 10, greater than 5, or 5 or less.
  if (number > 10) {
    print("if-else if-else: Number is greater than 10");
  } else if (number > 5) {
    print("if-else if-else: Number is greater than 5 but less than or equal to 10");
  } else {
    print("if-else if-else: Number is 5 or less");
  }
}

// -------------------------
// Example 4: Nested `if-else` Statements
// -------------------------
// Uses an `if-else` inside another `if-else` to handle sub-conditions.
void nestedIfElseExample() {
  int number = 8;
  // First check: is the number greater than 5?
  if (number > 5) {
    print("Nested if-else: Number is greater than 5");
    // Nested check: is the number even?
    if (number % 2 == 0) {
      print("Nested if-else: It is an even number");
    } else {
      print("Nested if-else: It is an odd number");
    }
  } else {
    print("Nested if-else: Number is 5 or less");
  }
}

// -------------------------
// Example 5: Ternary Operator for Conditional Logic
// -------------------------
// Provides a concise syntax to choose between two values.
void ternaryOperatorExample() {
  int age = 18;
  // If age is 18 or above, set status to "Adult"; otherwise, "Minor".
  String status = (age >= 18) ? "Adult" : "Minor";
  print("Ternary operator: $status");
}

// -------------------------
// Example 6: Using Logical Operators in Conditions
// -------------------------
// Combines multiple conditions using logical operators.
void logicalOperatorsExample() {
  int number = 15;
  // Check if number is positive and even, positive and odd, or negative.
  if (number > 0 && number % 2 == 0) {
    print("Logical operators: Positive even number");
  } else if (number > 0 && number % 2 != 0) {
    print("Logical operators: Positive odd number");
  } else {
    print("Logical operators: Negative number");
  }
}

// -------------------------
// Example 7: `if-else` Inside a Function
// -------------------------
// A function that returns a string based on the number's sign.
String checkNumber(int num) {
  // Return a string indicating if num is positive, negative, or zero.
  if (num > 0) {
    return "Positive";
  } else if (num < 0) {
    return "Negative";
  } else {
    return "Zero";
  }
}

void functionWithIfElseExample() {
  print("Function with if-else: " + checkNumber(10));
}

// -------------------------
// Example 8: `if-else` Inside a Loop
// -------------------------
// Uses conditional logic within an iterative loop.
void loopWithIfElseExample() {
  // Loop from 1 to 5, printing whether each number is even or odd.
  for (int i = 1; i <= 5; i++) {
    if (i % 2 == 0) {
      print("Loop: $i is even");
    } else {
      print("Loop: $i is odd");
    }
  }
}

// -------------------------
// Example 9: `if-else` with User Input (CLI-based)
// -------------------------
// Demonstrates conditional logic using user input. Uncomment for actual CLI usage.
void userInputExample() {
  // Uncomment the lines below to enable CLI input:
  // print("Enter a number: ");
  // int number = int.parse(stdin.readLineSync()!);
  // if (number > 0) {
  //   print("User Input: Positive number");
  // } else if (number < 0) {
  //   print("User Input: Negative number");
  // } else {
  //   print("User Input: It's Zero");
  // }
  print("User Input: Skipped (CLI input example commented out)");
}

// -------------------------
// Example 10: `if-else` Inside a Class Method
// -------------------------
// Integrates conditional logic within an object-oriented context.
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Check voting eligibility based on age.
  void checkEligibility() {
    if (age >= 18) {
      print("$name is eligible to vote.");
    } else {
      print("$name is not eligible to vote.");
    }
  }
}

void classMethodExample() {
  Person person = Person("Alice", 20);
  person.checkEligibility();
}

// -------------------------
// Example 11: Advanced Flutter Widget with Conditional Rendering
// -------------------------
// This example shows how to use if-else logic to render different widgets.
// (Note: This is commented out because it needs a Flutter environment to run)
/*
import 'package:flutter/material.dart';

class ConditionalWidget extends StatelessWidget {
  final bool isLoggedIn;
  ConditionalWidget({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    // Use a ternary operator to conditionally render widgets.
    return Center(
      child: isLoggedIn 
          ? Text("Welcome back!", style: TextStyle(fontSize: 24))
          : ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
    );
  }
}

void runFlutterExample() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Conditional UI Example")),
      body: ConditionalWidget(isLoggedIn: true),
    ),
  ));
}
*/

// -------------------------
// Main Function
// -------------------------
// Calls each example to demonstrate different if-else use cases.
void main() {

  test();
  test2();
  test3();


  print("----- Basic if Example -----");
  basicIfExample();

  print("\n----- if-else Example -----");
  ifElseExample();

  print("\n----- if-else if-else Example -----");
  ifElseIfElseExample();

  print("\n----- Nested if-else Example -----");
  nestedIfElseExample();

  print("\n----- Ternary Operator Example -----");
  ternaryOperatorExample();

  print("\n----- Logical Operators Example -----");
  logicalOperatorsExample();

  print("\n----- Function with if-else Example -----");
  functionWithIfElseExample();

  print("\n----- Loop with if-else Example -----");
  loopWithIfElseExample();

  print("\n----- User Input Example -----");
  userInputExample();

  print("\n----- Class Method Example -----");
  classMethodExample();

  // Uncomment the following line if running in a Flutter environment.
  // runFlutterExample();

  print("\n----- Advanced Flutter Widget Example (commented out) -----");
}
