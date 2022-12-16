const num py = 3.141;
int getAge() => 20;
void main() {
  var myAge = getAge; // value type function ,myAge are function!
  print(myAge());
  func1();
  func2(1, 'sss');

  print(func3());
  print(func4(1, 'aaaa'));

  print(func1_2());
  print(getName());

  profile('ssss', 'skr');
  profile('ssss');
  profile2();
  profile2(name: 'ssss1', city: 'bkk2');
  profile2(city: 'bkk1', name: 'ssss2');
}

// besic function !
void func1() {
  print('function 1');
}

// sort coding !
String getName() => 'ChontisBIGDICK';
func1_2() => print('function 1_2');

// long coding!
void func2(int param1, String param2) {
  print('param1 = $param1,param2 = $param2');
}

// order function!
bool func3() {
  return true;
}

String func4(int param1, String param2) {
  return 'param1 = $param1, param2 = $param2';
}

// high function !
void profile(String name, [String city = 'bkk']) {
  print('your name : $name , city: $city');
} // defalt param

void profile2({String name = '', String city = ''}) {
  print('your name : $name , city: $city');
} // null param