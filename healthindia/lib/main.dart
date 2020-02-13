import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:healthindia/screen/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
       primarySwatch: Colors.red,
       //brightness: Brightness.dark,
      ),
      home: Login(),
    );
  }
}