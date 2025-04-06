// Abstract class: is a restricted class that cannot be used to create objects
// (to access it, it must be inherited from another class).
//
// Abstract method: can only be used in an abstract class, and it does not have a body.

import 'Animal.dart';
import 'Dog_Cat.dart';

main(){
  print(Animal.test);
  Dog tom = Dog('Black', 'Tom');
  tom.speak();
  tom.breed();

  // Animal Kitty = Animal('Kitty');  :)  cannot be used to create objects
  // Kitty.eat();                     :)  to access it, it must be inherited from another class
  // Kitty.speak();

  Cat Kitty = Cat('White', 'Kitty');
  Kitty.eat();
  Kitty.breed();
}