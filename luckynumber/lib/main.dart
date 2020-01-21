import 'package:flutter/material.dart';
import './text_control.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        
          appBar: AppBar(
            title: Text("Lucky Number",style:TextStyle( fontWeight:FontWeight.bold,)),
          ),
          body: TextControl()),
          
    );
    

  }
}
