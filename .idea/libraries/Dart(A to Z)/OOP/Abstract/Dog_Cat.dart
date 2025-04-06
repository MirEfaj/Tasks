import 'Animal.dart';

class Dog extends Animal{
  @override
  speak(){
    print('Gue gue override');
  }
  String color;
  Dog(this.color, String name) : super(name);

  // Abstract method must be override
  @override
  breed(){
    print('German Shepherd');
  }
  @override
  nationality(){
    print('Germanany');
  }
}

class Cat extends Animal{
  @override
  speak(){
    print('Mew Mew override');
  }
  String color;
  Cat(this.color, String name) : super(name);

  // Abstract method must be override
  breed(){
    print('Iranian');
  }

  @override
  nationality(){
    print('Germanany');
  }
}