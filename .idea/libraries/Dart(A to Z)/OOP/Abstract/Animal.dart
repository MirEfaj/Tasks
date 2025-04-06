// Abstract method: can only be used in an abstract class, and it does not have a body.

abstract class Animal {
  String name;
  Animal(this.name);
  static var test = 'This is an animal class';

  void eat() {
    print('$name is eating');
  }

  void speak() {
    print('$name is speaking');
  }

  // Abstract method: subclasses must provide an implementation.
  void breed();
  void nationality();
}

