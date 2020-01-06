import 'dart:io';
void main()
{
  print('enter a no:');
  var n=stdin.readLineSync();
  print('no is: $n');
  for(var i=1;i<= 10;i++)
  {
print( int.parse(n)*i);
}
  
}