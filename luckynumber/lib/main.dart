import 'package:flutter/material.dart';
import './text_control.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white,
          appBar: PreferredSize(
        preferredSize: Size.fromHeight(260.0),
        child:  AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ //
        Image.network(
                'https://planets.powerfortunes.com/images/my-lucky-numbers.png',
                fit: BoxFit.contain,
                width: 300,
                height: 320,
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
          ),
            
          body: TextControl()),
      )
          
    );
    

  }
}
