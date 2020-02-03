import 'dart:io';

class Bookingplatform {
  void showDetails(String name, int Ph_no, String email) {
    print('Customer Name: $name' +
        '\n' 'Customer Ph_no: $Ph_no' +
        '\n' 'Customer Email:$email');
  }
}

class Customer extends Bookingplatform {
  void showCustomerDetails(String street, String state, String city,
      int postal_code, String country) {
    print(
        'customer street: $street  \n customer State: $state,\ncustomer City: $city, \ncustomer Postal_Code: $postal_code,\ncustomer Country: $country');
  }
}

class Airline extends Bookingplatform {
  void showAirline() {
    print('You Booked Airline Ticket');
  }
}

class Bus extends Bookingplatform {
  void showBus() {
    print('You Booked Bus Ticket');
  }
}

class Railway extends Bookingplatform {
  void showRailways() {
    print('You BookedRailway Ticket');
  }
}

void main() {
  print('Enter your choice:');
  var choice = stdin.readLineSync();
  var customer = new Customer();

  var airline = new Airline();
  var bus = new Bus();
  var railway = new Railway();
  print('Enter Your Name:');
  var customername=stdin.readLineSync();
  print('Enter Your Ph_No:');
  var customer_no=int.parse(stdin.readLineSync());
  print('Enter Your Email:');
  var customermail=stdin.readLineSync();
  print('Enter Your Street_Name:');
  var customerstreet=stdin.readLineSync();
  print('Enter Your State_Name:');
  var customerstate=stdin.readLineSync();
  print('Enter Your City_Name:');
  var customercity=stdin.readLineSync();
  print('Enter Your Postal_code:');
  var customepin=int.parse(stdin.readLineSync());
  print('Enter Your Country_Name:');
  var customercountry=stdin.readLineSync();

  

  switch (choice) {
    case 'airline':
      airline.showDetails(customername, customer_no , customermail);
      airline.showAirline();
      break;
    case 'bus':
      bus.showBus();
      bus.showDetails(customername, customer_no , customermail);
      break;
    case 'railway':
      railway.showRailways();
      railway.showDetails(customername, customer_no , customermail);
  }
  customer.showCustomerDetails(customerstreet,customerstate,customercity,customepin,customercountry);
}
