import 'forniture.dart';
// import 'product.dart';

void main(List<String> args) {
  // state 6 >>
    Forniture fur1 = new Forniture('Sofar', 20);
    fur1.setAmount(3);
    fur1.show();
    String furni = fur1.getAmount().toString();//toString เปลี่ยน int เป็น String
    print('จำนวน ' + furni + ' ชิ้น'); 
    // print('จำนวน ' + fur1.getAmount().toString() + ' ชิ้น'); 
  // state 6 <<
 
  // use  overriding method
  fur1.show2(7,'Sofar');

  // state 1 >>

    // print(product1.name);
    // print(product1.price);
    // product1.show();
    // product1.show2();

    // List list1 = ['string',123,8.8,false];
    // print(list1.length);
    // print(list1[0]);
    // print(list1[list1.length-1]);
    // list1.add('HelloWorld');
    // print(list1);
    // list1[0] = true;
    // print(list1);
    // print(' ');
    // for (var i=0;i<list1.length;i++){
    //   print(list1[i]);
    // }
    // print(' ');
    // for (var item in list1){
    //   print(item);
    // }
    // print(' ');
    // print(list1);
    // list1.insert(5,77);
    // list1.remove('HelloWorld');
    // print(list1);
    // print(' ');
    // Map<int,dynamic> conv = list1.asMap();
    // print(conv);
    // Map<int,String> code = {404:'Not Found!',200:'OK!'};
    // print(code);
    // print(code[404]);
    // code[500] = 'Server Error';
    // print(code);
    // code.remove(404);
    // print(code);
    // print(code.keys);
    // print(code.keys.toList());
    // print(code.values.toList());

  // end state 1 <<
  
  //state 4 >>

    // Product product1 = new Product(); // F12+left-click เพื่อเช็ค constructor ของ Product 
    // product1.setName('mobile');
    // print(product1.getName2());
    // print(product1.price);

  // end state 4 <<

  // state 5
    // Product product1 = new Product('Mobile', 999.99);
    // print(product1.getName());
    // product1.show();
    // Product product2 = new Product('Computer', 15000.99);
    // print(product2.getName());
    // product2.show();
  // state 5

  
}