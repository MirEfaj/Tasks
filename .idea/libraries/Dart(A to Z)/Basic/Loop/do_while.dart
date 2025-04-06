import 'dart:io';

void main() {
  print("----- Basic Do-While Loop Example -----");
  basicDoWhileLoop();

  print("\n----- Do-While Loop with Break and Continue -----");
  doWhileBreakContinue();

  print("\n----- Nested Do-While Loop Example -----");
  nestedDoWhileLoop();

  print("\n----- Interactive Do-While Loop Example -----");
  interactiveDoWhileLoop();
}

// -----------------------------------------------------
// Example 1: Basic Do-While Loop
// -----------------------------------------------------
// This loop prints numbers from 1 to 3.
// A do-while loop guarantees that the loop body is executed at least once.
void basicDoWhileLoop() {
  int counter = 1;
  do {
    print("Counter: $counter");
    counter++;
  } while (counter <= 3);
}

// -----------------------------------------------------
// Example 2: Do-While Loop with Break and Continue
// -----------------------------------------------------
// This example demonstrates using 'continue' to skip even numbers
// and 'break' to exit the loop early if a condition is met.
void doWhileBreakContinue() {
  int counter = 1;
  do {
    // If the number is even, skip printing and move to the next iteration.
    if (counter % 2 == 0) {
      counter++;
      continue;
    }
    // If counter exceeds 5, break out of the loop.
    if (counter > 5) {
      break;
    }
    print("Counter with break/continue: $counter");
    counter++;
  } while (counter <= 10);
}

// -----------------------------------------------------
// Example 3: Nested Do-While Loop Example
// -----------------------------------------------------
// Demonstrates a nested do-while loop by printing a multiplication table.
// The outer loop handles the rows and the inner loop handles the columns.
void nestedDoWhileLoop() {
  int row = 1;
  int size = 3; // Size of the multiplication table.
  do {
    int col = 1;
    do {
      // Print the product followed by a tab for alignment.
      stdout.write('${row * col}\t');
      col++;
    } while (col <= size);
    print(''); // New line after each row.
    row++;
  } while (row <= size);
}

// -----------------------------------------------------
// Example 4: Interactive Do-While Loop Example
// -----------------------------------------------------
// This interactive loop continuously prompts the user for input
// until the user types "quit". It demonstrates handling user input.
void interactiveDoWhileLoop() {
  String? input;
  do {
    stdout.write("Enter a word (or type 'quit' to exit): ");
    input = stdin.readLineSync();
    if (input != null && input.toLowerCase() != 'quit') {
      print("You entered: $input");
    }
  } while (input != null && input.toLowerCase() != 'quit');
  print("Exiting interactive do-while loop.");
}
