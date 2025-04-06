import 'dart:io';

void main() {
  print("----- Basic For Loop -----");
  basicForLoop();

  print("\n----- For Loop with Custom Step -----");
  forLoopWithStep();

  print("\n----- For Loop with Break and Continue -----");
  forLoopBreakContinue();

  print("\n----- Iterating Over a List Using Index -----");
  listIterationForLoop();

  print("\n----- For-In Loop (Enhanced For Loop) -----");
  forInLoopExample();

  print("\n----- Nested For Loop Example -----");
  nestedForLoopExample();
}

// -----------------------------------------------------
// Example 1: Basic For Loop
// -----------------------------------------------------
// Iterates from 0 to 4, printing each number.
void basicForLoop() {
  for (int i = 0; i < 5; i++) {
    print("Basic loop iteration: i = $i");
  }
}

// -----------------------------------------------------
// Example 2: For Loop with Custom Step
// -----------------------------------------------------
// Iterates from 0 to 10, incrementing by 2 on each iteration.
void forLoopWithStep() {
  for (int i = 0; i <= 10; i += 2) {
    print("Custom step loop iteration: i = $i");
  }
}

// -----------------------------------------------------
// Example 3: For Loop with Break and Continue
// -----------------------------------------------------
// Demonstrates how to use `break` to exit the loop early and
// `continue` to skip an iteration.
void forLoopBreakContinue() {
  for (int i = 0; i < 10; i++) {
    // Skip even numbers
    if (i % 2 == 0) {
      continue; // Skip the rest of this iteration
    }
    // Break the loop if i is greater than 7
    if (i > 7) {
      break; // Exit the loop entirely
    }
    print("Break/Continue loop iteration: i = $i");
  }
}

// -----------------------------------------------------
// Example 4: Iterating Over a List Using Index
// -----------------------------------------------------
// Uses a traditional for loop to iterate over a list by index.
void listIterationForLoop() {
  List<String> fruits = ["Apple", "Banana", "Cherry", "Date"];
  for (int i = 0; i < fruits.length; i++) {
    print("Fruit at index $i: ${fruits[i]}");
  }
}

// -----------------------------------------------------
// Example 5: For-In Loop (Enhanced For Loop)
// -----------------------------------------------------
// Iterates directly over the elements of a collection.
void forInLoopExample() {
  List<String> colors = ["Red", "Green", "Blue"];
  for (String color in colors) {
    print("Color: $color");
  }
}

// -----------------------------------------------------
// Example 6: Nested For Loop Example
// -----------------------------------------------------
// Demonstrates nested loops by printing a multiplication table.
// Using 'stdout.write' to print on the same line.
void nestedForLoopExample() {
  int size = 5;
  for (int i = 1; i <= size; i++) {
    for (int j = 1; j <= size; j++) {
      stdout.write('${i * j}\t');
    }
    // Newline after each row of the table.
    print('');
  }
}
