class Product{
  
    late String _name; // เติม late จะใช้เพื่อกำหนดค่า implements ทีหลัง 
    double? _price; // เติม _ เพื่อทำให้ implements ให้มี status เป็น private 
  
  // state 4 >>

    // Product(){
    //   print('Product constructor'); //default setting constructor
    //   this._name = name;
    //   this._price;
    // }

  // state 4 <<

  // state 5 >>

    Product(this._name,this._price);// ลดรูป 
    
    // Product(String name,double price){
    //   this._name = name;
    //   this._price = price;
    // }
    void show(){
      print('สินค้า ${this._name} ราคา ${this._price}');
    }
  // state 5 <<

  // state 2 >>

    // void show(){
    //   print('สินค้า $name ราคา $price');
    // }
    // void show2() => print('สินค้า $name ราคา $price');

  // endstate 2 <<

  // state 3 >>

    void setName(String name){
      this._name = name;
    }
    String getName(){
      return this._name;
    }
    String getName2()=>this._name;

  // end state 3 <<
}
