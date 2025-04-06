//During the implementation of an interface, you must override all of its methods.

import 'Animal.dart';

class Dog implements Animal {

  @override
  String name;
  String color;
  Dog(this.color, this.name);

  @override
  void eat() {
    print('$name is eating meat');
  }

  @override
  void speak() {
    print('$name is barking with other Dogs');
  }

  @override
  void breed() {
    print('$name is a German Shepherd Dog');
  }

  @override
  void nationality() {
    print('German');
  }
}

void main() {

  Dog leo = Dog('Black', 'Leo');

  leo.eat();         // Output: Leo is eating meat
  leo.speak();       // Output: Leo is barking with other Dogs
  leo.breed();       // Output: Leo is a German Shepherd Dog
  leo.nationality(); // Output: German
  print(Animal.test); // Output: This is an animal class
}
