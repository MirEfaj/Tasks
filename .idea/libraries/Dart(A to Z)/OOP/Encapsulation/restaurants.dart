// main(){
//   Restaurant kfc = Restaurant();
//   kfc.order('ckn fry');
//   kfc._prepaareItem("ckn fry");
//
// }
class Restaurant{

  String name;
  int _id = 2025;
  String location ="Dhaka";

  Restaurant(this.name);

  order(String item){
    print("$item ordered");
    _shopping(item);      // private item can be call internally
    _prepaareItem(item);
    print("$item Serve");
  }

  _prepaareItem(String item){
    print("$item cooking");
  }

  _shopping(String item){
    print("material buy");
  }

  soldOut(){
    print('Sold out item');
  }

  int get restaurantId => _id;

 // int get restaurantId{ return _id;  }

  set setId(int value){
    _id = value;
  }

}