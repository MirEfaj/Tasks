import "restaurants.dart";

main(){
  Restaurant kfc = Restaurant("kfc");
  kfc.order('ckn fry');
  kfc.soldOut();
  print(kfc.location);
  print(kfc.restaurantId);
  kfc.setId = 2050;
  print(kfc.restaurantId);



}


