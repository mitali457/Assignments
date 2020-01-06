import 'dart:io';
void main() {
  print('disance between source to destination:');
  var distance = int.parse(stdin.readLineSync());
  int onlinetaxicost;
  int newdistance;
  var startingcost = 40;
  print(distance);
  if (distance <= 20) {
    onlinetaxicost = startingcost;
    print('your online taxi cost is:$onlinetaxicost');
  } else {
    newdistance = distance - 20;

    onlinetaxicost = (startingcost + newdistance * 10);
    print('your online taxi cost is:$onlinetaxicost');
  }
 var basefare = 15;
  var classictaxicost = ((30 * distance) + basefare);

  print('your classic taxi cost is: $classictaxicost');

  if (onlinetaxicost >=classictaxicost) 
  {
    print('choose classic taxi for going to destination');
  }  else {
    print('choose online taxi for going to destination');
  }
}
