import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/screen/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}