import "Father.dart";

class Son extends Father{
  String sonName;
  Son(this.sonName) : super('Jahangir');
//  Son(this.sonName , String fatherName) : super(fatherName);

  @override
  incomeSource(){
    print('App Developer');
  }

  getFatherIncomeSource(){
    super.incomeSource();
  }

}

