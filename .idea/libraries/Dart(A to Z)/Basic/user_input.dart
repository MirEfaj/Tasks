import 'dart:io';

void main() {
  print('Enter your name & Age');
  String? name = stdin.readLineSync();
  int ? age = int.tryParse(stdin.readLineSync()!);
  print("My name is $name. I am $age old.");
  print("My name is ${name?.toUpperCase()}. I am $age old.");
}
