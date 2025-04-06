import 'dart:io';

void main() {
  print("----- Basic While Loop -----");
  basicWhileLoop();

  print("\n----- Do-While Loop Example -----");
  doWhileLoopExample();

  print("\n----- While Loop with Break and Continue -----");
  whileLoopBreakContinue();

  print("\n----- Iterating Over a List Using While Loop -----");
  iteratingListWhileLoop();

  print("\n----- Nested While Loop Example -----");
  nestedWhileLoopExample();

  print("\n----- Advanced Interactive While Loop -----");
  advancedWhileLoopInputExample();
}

// -----------------------------------------------------
// Example 1: Basic While Loop
// -----------------------------------------------------
// Uses a while loop to print numbers from 1 to 5.
void basicWhileLoop() {
  int i = 1;
  while (i <= 5) {
    print("Basic while loop iteration: i = $i");
    i++; // Increment the counter.
  }
}

// -----------------------------------------------------
// Example 2: Do-While Loop Example
// -----------------------------------------------------
// A do-while loop executes the block at least once before checking the condition.
void doWhileLoopExample() {
  int count = 1;
  do {
    print("Do-while loop iteration: count = $count");
    count++;
  } while (count <= 3);
}

// -----------------------------------------------------
// Example 3: While Loop with Break and Continue
// -----------------------------------------------------
// Demonstrates using 'continue' to skip even numbers and 'break' to exit early.
void whileLoopBreakContinue() {
  int i = 1;
  while (i <= 10) {
    if (i % 2 == 0) {
      i++; // Skip even numbers.
      continue;
    }
    if (i > 7) {
      break; // Exit loop if i becomes greater than 7.
    }
    print("While loop with break/continue iteration: i = $i");
    i++;
  }
}

// -----------------------------------------------------
// Example 4: Iterating Over a List Using While Loop
// -----------------------------------------------------
// Uses a while loop to iterate through each element of a list by index.
void iteratingListWhileLoop() {
  List<String> fruits = ["Apple", "Banana", "Cherry", "Date"];
  int index = 0;
  while (index < fruits.length) {
    print("Fruit at index $index: ${fruits[index]}");
    index++;
  }
}

// -----------------------------------------------------
// Example 5: Nested While Loop Example
// -----------------------------------------------------
// Demonstrates nested while loops by printing a simple multiplication table.
void nestedWhileLoopExample() {
  int row = 1;
  int size = 4; // Size of the multiplication table.
  while (row <= size) {
    int col = 1;
    while (col <= size) {
      // Using print with 'stdout.write' to stay on the same line.
      stdout.write('${row * col}\t');
      col++;
    }
    print(''); // New line after finishing each row.
    row++;
  }
}

// -----------------------------------------------------
// Example 6: Advanced Interactive While Loop
// -----------------------------------------------------
// An interactive loop that keeps asking the user for input until they type 'exit'.
// It demonstrates reading user input and controlling the loop based on conditions.
void advancedWhileLoopInputExample() {
  print("Type a word (or type 'exit' to quit):");
  String? input = stdin.readLineSync();

  // Continue looping until user enters 'exit'
  while (input != null && input.toLowerCase() != 'exit') {
    print("You typed: $input");
    print("Type another word (or type 'exit' to quit):");
    input = stdin.readLineSync();
  }

  print("Exiting interactive loop.");
}
