import 'dart:io';
void main() {
  print('Enter the no of chocklate:');
  var noofchocklate= int.parse(stdin.readLineSync());
  var nooffriends=31;
  if((noofchocklate%nooffriends == 0))
  {
    print('Equally distributed to all the friends!!');
  }
    else 
    {
      print('Equal distribution is not possible');

    }
  }
