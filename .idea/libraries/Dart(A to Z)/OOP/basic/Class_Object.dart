void main(){

  //.......................................
  Student s1 = Student();
  s1.name = 'Efaj';
  s1.age = 24;
  s1.address = 'Dhaka';

  print(s1.name);
  print(s1.age);
  print(s1.address);

//.........................Defaul value ..............
  Human mir = Human();
  mir.age = 30;
  print(mir.name);
  print(mir.age);
  print(mir.address);
  print(mir.riding());

//..............Defaul value overwrite..........................
  Human me = Human();
  me.age = 30;
  me.name = "Thomas";
  me.address = "USA";

  print(me.name);
  print(me.age);
  print(me.address);
  print(me.eating());
  print(me.riding());

// .............................Static................................
  Human.sleep();
  print(Human.nationality);


}



//.........................class create.................................
class Student {
  String? name;
  int ? age ;
  String ? address;
}
//........Human class.....
class Human {
  String name = "Mir Efaj";           // default name
  late int  age ;
  String  address = 'Cumilla';        // default address
  static String nationality = 'Bangladeshi';

  eating(){
    print("$name is Eating pizza");
  }
  riding(){
    print("$name is riding bike");
  }

  static sleep(){
    print('sleep plays a vital role in repairing and restoring the brain');
  }
}



// Basic to Advanced Dart Classes Example

// -------------------------
// 1. Basic Class: Person
// -------------------------
// A simple class with instance variables, a constructor, a named constructor, and a method.
class Person {
  String name;
  int age;

  // Regular constructor using shorthand syntax.
  Person(this.name, this.age);

  // Named constructor to initialize from a JSON-like map.
  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  // Method to display the person's information.
  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

// -------------------------
// 2. Inheritance: Employee extends Person
// -------------------------
// Inherits from Person and adds an extra property along with an overridden method.
class Employee extends Person {
  String employeeId;

  // Constructor calls the superclass constructor.
  Employee(String name, int age, this.employeeId) : super(name, age);

  // Overriding displayInfo() to include employee-specific details.
  @override
  void displayInfo() {
    super.displayInfo();
    print("Employee ID: $employeeId");
  }
}

// -------------------------
// 3. Abstract Class and Implementation
// -------------------------
// An abstract class defines a contract (abstract method) for its subclasses.
abstract class Animal {
  void makeSound(); // Abstract method: must be implemented by subclasses.
}

// Concrete class Dog implements the Animal abstract class.
class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

// -------------------------
// 4. Mixin Example: CanFly
// -------------------------
// A mixin that provides additional functionality (ability to fly).
mixin CanFly {
  void fly() {
    print("I can fly!");
  }
}

// Class Bird uses both an abstract class (Animal) and the mixin (CanFly).
class Bird extends Animal with CanFly {
  @override
  void makeSound() {
    print("Chirp!");
  }
}

// -------------------------
// 5. Static Members and Factory Constructor: Calculator
// -------------------------
// Demonstrates static properties, methods, and a factory constructor to count instances.
class Calculator {
  // Static variable to count the number of instances created.
  static int count = 0;

  // Factory constructor that increments the count each time an instance is created.
  factory Calculator() {
    count++;
    return Calculator._internal();
  }

  // Private named constructor.
  Calculator._internal();

  // A static method to perform addition.
  static int add(int a, int b) => a + b;
}

// -------------------------
// 6. Generic Class: Container
// -------------------------
// A class that uses generics to hold content of any type.
class Container<T> {
  T content;

  Container(this.content);

  // Method to display the content.
  void displayContent() {
    print("Container holds: $content");
  }
}

// -------------------------
// Main Function: Testing all the class examples
// -------------------------
void main() {
  // Testing Basic Class (Person)
  Person person = Person("Alice", 30);
  person.displayInfo();

  // Testing Named Constructor (Person.fromJson)
  Person jsonPerson = Person.fromJson({"name": "Bob", "age": 25});
  jsonPerson.displayInfo();

  // Testing Inheritance (Employee)
  Employee employee = Employee("Charlie", 28, "E123");
  employee.displayInfo();

  // Testing Abstract Class and Implementation (Animal -> Dog)
  Animal dog = Dog();
  dog.makeSound();

  // Testing Mixin (Bird using CanFly)
  Bird bird = Bird();
  bird.makeSound();
  bird.fly();

  // Testing Static Members and Factory Constructor (Calculator)
  Calculator calc1 = Calculator();
  Calculator calc2 = Calculator();
  print("Number of Calculator instances: ${Calculator.count}");
  print("Addition using static method: ${Calculator.add(5, 10)}");

  // Testing Generic Class (Container)
  Container<int> intContainer = Container<int>(100);
  intContainer.displayContent();

  Container<String> stringContainer = Container<String>("Hello, Dart");
  stringContainer.displayContent();
}
