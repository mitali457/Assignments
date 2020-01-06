import 'dart:io';

class FlightOpeartions {
  void getAllAvailableFlights() {
    print('Name of the available flights:');
    //print('Bangalore to Kolkata @3:00pm');
  }

  void bookingFlights() {
    print('Enter the no of seats that you want to book:');
    int userbookingno = int.parse(stdin.readLineSync());
    if (userbookingno != 0) {
      print('${userbookingno} seats you  were booked');
    } else {
      print('you are not enter the right booking no:');
    }
  }
}

class Indigo extends FlightOpeartions {
  void getAllAvailableFlights() {
    //print('Indigo flights you booked');
  }

  void bookingFlights() {
    print('Enter the no of seats that you want to book:');
    int userbookingno = int.parse(stdin.readLineSync());
    if (userbookingno >4) {
      print('${userbookingno} seats you  were booked in Indigoflights');
    } else {
      print('you flights not available!');
    }
  }
}

class Airasia extends FlightOpeartions {
  void getAllAvailableFlights() {
   // print('Airasia flights you booked');
  }

  void bookingFlights() {
    print('Enter the no of seats that you want to book:');
    int userbookingno = int.parse(stdin.readLineSync());
    if (userbookingno <0) {
      print('${userbookingno} seats you  were booked Airasiaflights ');
    } else {
      print('you flights not available!');
    }
  }
}

class Spiejet extends FlightOpeartions {
  void getAllAvailableFlights() {
   // print('spiejet flights you booked');
  }

  void bookingFlights() {
    print('Enter the no of seats that you want to book:');
    int userbookingno = int.parse(stdin.readLineSync());
    if (userbookingno <= 5) {
      print('${userbookingno} seats you  were booked Spiejetflights');
    } else {
      print('you flights not available!');
    }
  }
}

void main() {
  Indigo indigo = new Indigo();
  Airasia airasia = new Airasia();
  Spiejet spiejet = new Spiejet();
  indigo.getAllAvailableFlights();
  indigo.bookingFlights();
  airasia.getAllAvailableFlights();
  airasia.bookingFlights();
  spiejet.getAllAvailableFlights();
  spiejet.bookingFlights();
}
