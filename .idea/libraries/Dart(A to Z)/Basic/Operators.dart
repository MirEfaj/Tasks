void main(){
  // Arithmetic Operators
  int a=10,  b=5;
  String num = "100";

  print("Addition ${a+b}");
  print("Subtraction ${a-b}");
  print("Multiplication ${a*b}");
  print("Division ${a/b}");
  print("Remainder ${a%b}");
  print("add $a + $num = ${a + (int.parse(num))}"); // convert String to Intger

  //relational operator
  print("a is equal to b :${a==b}");
  print("a is not equal to b :${a!=b}");
  print("a is greater than to b :${a>b}");
  print("a is less than to b :${a>b}");

  //logical opertors
  bool x=true,y=false;
  print("x and y ${x && y}");
  print("x or y ${x || y}");
  print("x or y ${x != y}");  // not equal
  print("x or y ${!(x == y)}"); // not equal
  print("not x ${!x}");

  //unary
  int v=10;
  int c=-v;
  v++;//v+1
  print('unary increment operator $v ');
  c--;//c-1
  print('unary decrement operator $c ');


  // Assignment operator
  int f = 40;
  f+=3;    // a= a + 3 ;
  print('Assignment operator $f ');
  f-=3;    // a= a - 3 ;
  print('Assignment operator $f ');
  f*=3;    // a= a * 3 ;
 print('Assignment operator $f ');


}