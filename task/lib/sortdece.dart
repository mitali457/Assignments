
import 'dart:io';
void main()
{
  print('Enter  a no: ');
  var n= stdin.readLineSync();
  print('no is: $n');
  //n.sort(b, a) => a.compareTo(b);
//print("enter the no::");
  //var n=stdin.readLineSync();
  
//var input =[6,5,5,4,7];

var ascending = n.toString();
var descending = ascending.reversed;
print(descending);
 
}

