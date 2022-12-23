import 'product.dart';

class Forniture extends Product{
  Forniture(super.name, super.price); // new constructor
  
  // state 6 >>
  int _amount = 0;
  getAmount()=>this._amount;
  setAmount(int amount)=>this._amount = amount;
  // state 6 <<

  // overriding method
  void show2(int i,[String? name]){
      print('สินค้า ' + ' ราคา ');
    }

}