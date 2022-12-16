void main(){
 func1();
 func2(1 , 'sss');

 print(func3());
 print(func4(1,'aaaa'));

 print(func1_2());
 print(getName());
}

void func1(){
  print('function 1');
}

// sort coding !
String getName()=>'ChontisBIGDICK';
func1_2()=>print('function 1_2');

// long coding!
void func2(int param1, String param2){
  print('param1 = $param1,param2 = $param2');
}

// order function!
bool func3(){
  return true;
}
String func4(int param1 , String param2){
  return 'param1 = $param1, param2 = $param2';
}