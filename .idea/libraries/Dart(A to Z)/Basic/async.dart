import 'dart:core';
main(){

  test();  //  it will move forward without compleating full task;
  test2(); // after compleating task it will move forward;
  ableToVote(10).then((value){
    if(value){
      print('able to vote');
    } else{
      print('still kid');
    }
  });

  login('0123456789', '1234').then((value){
    if(value){
      print('FB Home page');
    } else{
      print('Error , Login page');
    }
  });



}


Future<bool> ableToVote(int age) async{
  if(age >= 18){
    return true;
  }
  else{
    return false;
  }
}


Future<bool> login(String phone, String password) async{
  String userPhone = '0123456789';
  String userPass = '1234';
  if(userPhone == phone && userPass == password){
    return true;
  }else{
    return false;
  }
  }

  Future<void> test() async{
  Future.delayed(Duration(seconds: 2),(){
    print('Run after 2 sec');
  });
  print('Function End');
  }

Future<void> test2() async{
 await Future.delayed(Duration(seconds: 2),(){
    print('Run after waiting 2 sec');
  });
  print(' waiting Function End');
}