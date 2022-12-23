void main(){
  int a = 0 ,b = 0;
  if(a==b)
    print('true');
  else
    print('false');
  String res = (a==b) ? 'true' : 'false';
  print(res);
  
  switch(a) { 
   case 0 : {print('case 0');}break; 
   case 1 : {print('case 0');} break;  
   default: {print('not found');}break; 
  } 
  
  while(a<5){
    print('a=$a');
    a++;
  }
  
  for(var i=1;i<10;i++){
    if (i==2)
      continue;
    if (i==3)
      break;
    print('i =$i');
  }
    
  
  do {
    a==0;
    print('a=$a');
    a++;
  } while(a<5);
}