import 'package:flutter/material.dart';
import 'package:stopwatch/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loadPage(),
    );
  }
}

class loadPage extends StatefulWidget {
  @override
  _loadPageState createState() => _loadPageState();
}

class _loadPageState extends State<loadPage> {
  bool isload = false;
  onButtonclick() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
    setState(() {

      isload=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isload ? Center(child: Container(height:200,width:200,decoration:BoxDecoration(image:DecorationImage(image:NetworkImage('https://cdn.dribbble.com/users/2589309/screenshots/6546508/walking-coin_dribble_1.gif'))),),
       ) : Center(child:RaisedButton(onPressed:(){onButtonclick();},child:Text('=>.....')))
    );
  }
}
