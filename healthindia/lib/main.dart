import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:healthindia/HealthyIndia_Screen/login.dart';
import 'package:healthindia/HealthyIndia_Screen/registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      routes: {
        '/login': (context) => Login(),
        '/registration':(context)=>Registration()
      },
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
       primarySwatch: Colors.grey,
       //brightness: Brightness.dark,
      ),
      home: Login(),
    );
  }
}