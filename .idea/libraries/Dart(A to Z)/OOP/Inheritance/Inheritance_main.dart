import "Son.dart";
import "Father.dart";

main(){
  Son Mir = Son('Mir Efaj');
  // Son Mir = Son('Mir Efaj', 'Jahangir');
  Mir.land = '333 acir by Son';
  Mir.house = 'Sad ar Basa by Son';

  print(Mir.land);
  print(Mir.house);
  print(Mir.bike);
  Mir.incomeSource();
  Mir.getFatherIncomeSource();


}