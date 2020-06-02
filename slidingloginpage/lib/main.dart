import 'package:flutter/material.dart';
import 'package:slidingloginpage/screen/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}