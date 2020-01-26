import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData.dark(),
      home: new HomePage(),
    );
  }
}
  class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
              body: Container(child: Text("Hi Mitali"),
          
        ),
      );
    }
  }