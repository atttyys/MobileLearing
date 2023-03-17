void main() {
  print(loginUser());
  print('ทำงานคำสั่งถัดไป');
}

String loginUser() {
  //ดึงข้อมูล
  var user = getUserFromDatabase();
  return 'user : ' + user;
}

String getUserFromDatabase() {
  return 'Flutter';
}
