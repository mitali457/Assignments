import 'dart:io';
void main() {
  var product1cost = 500;
  var product2cost = 345;
  var product3cost = 670;
  var product4cost = 400;
  var totalamount =(product1cost + product2cost + product3cost + product4cost).toDouble();
  print('press 1 for your tottal amount in Indian Currency:');
  print('press 2 for your tottal amount in China Currency:');
  print('press 3 for your tottal amount in Vietnam Currency::');
  print('press 4 for your tottal amount in Indonesia Currency:');
  print('press  for your tottal amount in UnitedState Currency:');
  var choice = stdin.readLineSync();
  switch (choice) {
    case '1':
      {
        print('your total amount is: Rs$totalamount');
      }
      break;
    case '2':
      {
        totalamount = (10.22 * totalamount);
        print('your total amount is: ¥ $totalamount');
      }
      break;
    case '3':
      {
        totalamount = (300 * totalamount);
        print('your total amount is: ₫ $totalamount');
      }
      break;
    case '4':
      {
        totalamount = (200 * totalamount);
        print('your total amount is:  Rp$totalamount');
      }
      break;
    case '5':
      {
        totalamount = (200 * totalamount);
        print('your total amount is:  USD$totalamount');
      }
      break;
    default:
      print('Not match in the country name!!');
  }
}
