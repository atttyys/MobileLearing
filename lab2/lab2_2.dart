void main(List<String> args) {
  List list1 = ['string',123,8.8,false];
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
  Map<int,dynamic> conv = list1.asMap();
  print(conv);
  Map<int,String> code = {404:'Not Found!',200:'OK!'};
  // print(code);
  // print(code[404]);
  code[500] = 'Server Error';
  // print(code);
  code.remove(404);
  print(code);
  print(code.keys);
  print(code.keys.toList());
  print(code.values.toList());
}