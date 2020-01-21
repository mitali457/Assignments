import 'package:flutter/material.dart';
class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar( title: Text(" Messages",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 50,color: Colors.black),),
      backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}