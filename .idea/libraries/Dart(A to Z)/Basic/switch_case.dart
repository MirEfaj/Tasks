// Comprehensive Dart switch-case examples demonstrating basic to advanced usage

void test(){
  int month = 1;

  switch(month){
    case 12:
    case 1:
    case 2:
      print("Winter");
      break;
    case 3:
    case 4:
    case 5:
      print("Spring");
      break;
    case 6:
    case 7:
    case 8:
      print("Summer");
      break;

    case 9:
    case 10:
    case 11:
      print("Autumn");
      break;

    default:
      print('Invalid Month');
  }

}

void test2(){

  int month = 5;
  switch(month){
    case 12 || 1 || 2:
      print("Winter");
      break;
    case 3 || 4 || 5:
      print("Spring");
      break;
    case 6 || 7 || 8:
      print("Summer");
      break;

    case 9 || 10 || 11:
      print("Autumn");
      break;

    default:
      print('Invalid Month');
  }
}


// -------------------------
// Example 1: Basic Switch-Case with Integer Values
// -------------------------
// Uses an integer to decide which day of the week to print.
void basicSwitchExample() {
  int dayNumber = 3;
  // Switch on an integer value
  switch (dayNumber) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day number");
  }
}

// -------------------------
// Example 2: Switch-Case with String Values
// -------------------------
// Switches on a command string to determine an action.
void stringSwitchExample() {
  String command = "start";
  // Switch on a string value
  switch (command) {
    case "start":
      print("Starting the process...");
      break;
    case "stop":
      print("Stopping the process...");
      break;
    case "pause":
      print("Pausing the process...");
      break;
    default:
      print("Unknown command");
  }
}

// -------------------------
// Example 3: Switch-Case Using Enums
// -------------------------
// Enums help manage a fixed set of constant values, e.g., weather conditions.
enum Weather { sunny, cloudy, rainy, snowy }

void enumSwitchExample(Weather weather) {
  // Switch on an enum value
  switch (weather) {
    case Weather.sunny:
      print("It's a sunny day!");
      break;
    case Weather.cloudy:
      print("It's cloudy outside.");
      break;
    case Weather.rainy:
      print("Don't forget your umbrella.");
      break;
    case Weather.snowy:
      print("Time for snow boots!");
      break;
  }
}

// -------------------------
// Example 4: Advanced Switch-Case with a Return Value
// -------------------------
// A function that returns a description based on a letter grade.
String getGradeDescription(String grade) {
  // Switch on a grade string to determine the performance description.
  switch (grade) {
    case "A":
      return "Excellent";
    case "B":
      return "Good";
    case "C":
      return "Average";
    case "D":
      return "Below Average";
    case "F":
      return "Fail";
    default:
      return "Invalid grade";
  }
}

// -------------------------
// Example 5: Advanced Nested Switch-Case
// -------------------------
// Demonstrates a nested switch-case where the outer switch distinguishes actions
// (e.g., admin vs. user), and the inner switch provides sub-action details based on a code.
void nestedSwitchExample(String action, int code) {
  // Outer switch-case based on action type.
  switch (action) {
    case "admin":
      print("Admin actions:");
      // Inner switch-case for admin-specific codes.
      switch (code) {
        case 1:
          print("Create user");
          break;
        case 2:
          print("Delete user");
          break;
        default:
          print("Unknown admin code");
      }
      break;
    case "user":
      print("User actions:");
      // Inner switch-case for user-specific codes.
      switch (code) {
        case 1:
          print("View profile");
          break;
        case 2:
          print("Edit profile");
          break;
        default:
          print("Unknown user code");
      }
      break;
    default:
      print("Invalid action");
  }
}

// -------------------------
// Main Function
// -------------------------
// Executes all the examples to demonstrate various switch-case uses.
void main() {

  test();
  test2();

  print("----- Basic Switch Example -----");
  basicSwitchExample();

  print("\n----- String Switch Example -----");
  stringSwitchExample();

  print("\n----- Enum Switch Example -----");
  enumSwitchExample(Weather.rainy);

  print("\n----- Advanced: Switch with Return Value -----");
  print("Grade A: " + getGradeDescription("A"));
  print("Grade F: " + getGradeDescription("F"));

  print("\n----- Advanced: Nested Switch Example -----");
  nestedSwitchExample("admin", 1);
  nestedSwitchExample("user", 2);
  nestedSwitchExample("user", 3);
}
