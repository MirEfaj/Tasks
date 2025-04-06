void main(){

  int num = 10;                // 10
  double num1 = 11.5;          // 11.5
  bool isTrue = false;         // false
  String myName = 'Mir Efaj';   // Mir Efaj

  String firstName = 'Mir';
  String lastName  = 'Efaj';
  String fullName  = "$firstName $lastName";

  print(fullName.contains("Mir"));
  print(fullName.toLowerCase());
  print(fullName.toUpperCase());
  print(fullName.length);
  print(fullName.runtimeType);
  print(fullName.trim());
  print(fullName.isEmpty);


// var , dynamic keyword
  var a = 50;
      a = 30;
   //   a = "Mir";    var automatically determines the type at initialization and cannot be changed afterward.
   a = 100;
  print(a);  // 100

  dynamic b = 70;
          b = 50.5;
          b = bool;
          b = 'Mir Efaj';  // dynamic allows changing the type at runtime.
  print(b);
  print(b.runtimeType);


  ///compile time and run time
  final String namelanguage = "dart";   //initialized at runtime , i will do it in the morning
  final DateTime nowDateTime = DateTime.now();
  print(nowDateTime);
  const pi = 3.1416 ;                  //must be initialized at compile time() , universal truth

}