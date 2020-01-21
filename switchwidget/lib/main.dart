/* 
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Theme Change',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      
    );
  }
}*/
 import 'package:flutter/material.dart';
  
  void main() => runApp(MyApp());
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Welcome to Flutter',
        home: SwitchExample(),
      );
    }
  }
  
  class SwitchExampleState extends State {
    bool switchOn = false;
  
    void _onSwitchChanged(bool value) {
      switchOn = false;
    }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Switch Widget'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child:  Transform.scale(
            scale: 2.0,
            child: Switch(
              onChanged: _onSwitchChanged,
              value: switchOn,
              activeColor: Colors.blue,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.red,
              
            ),
          ),
        ),
      );
    }
  }
  
  class SwitchExample extends StatefulWidget {
    @override
    SwitchExampleState createState() => new SwitchExampleState();
  }