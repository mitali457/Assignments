import 'package:flutter/material.dart';
import 'package:monthlykharcha/screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}