import 'package:bmicalculator/bmi_view/BMICalculatorScreen.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: BMICalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
