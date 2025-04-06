void main(){
  bird crow = bird("Kawa", "Dhaka", "BD");
  print(crow);
  print(crow.country);
  crow.fly();

  Human mir = Human(name: "Efaj", area: "Khilgaon", country: "BD");
  mir.Address();
  print(mir.area);
}

class bird{
  String name;
  String area;
  String country;
  // constructor
  bird(this.name, this.area, this.country);

  fly(){
    print('$name is flying');
  }
}

class Human{
  String name;
  String area;
  String country;
  // constructor
  Human({required this.name,required this.area,required this.country});

  Address(){
    print('$name lived in $area , $country .');
  }
}