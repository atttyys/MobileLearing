import 'product.dart';

class Forniture extends Product {
  Forniture(super.name, super.price); // new constructor

  // state 6 >>
  int _amount = 0;
  getAmount() => this._amount;
  setAmount(int amount) => this._amount = amount;
  // state 6 <<

  // overriding method
  void show2(int n, double i, [String? name]) {
    var name2 = name;
    var i2 = i.toString();
    var n2 = i * n;
    print('สินค้า ' +
        name2! +
        ' ราคา ' +
        i2 +
        ' จำวนวณ ' +
        n.toString() +
        ' ชิ้น ราคา ' +
        n2.toString());
  }
}
