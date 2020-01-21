import 'package:flutter/material.dart';
import './text_output.dart';
import 'dart:math';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String text = "Click to get a lucky number";
    //Random rnum = new Random();


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextOutput(text),
          Container(
            margin: EdgeInsets.all(24),
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  text = "Your Luckynumber is: " +
                      new Random().nextInt(10).toString() +
                      "\n It's a great Day!!";
                });
              },
              child: Text(
                'Click Here',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}