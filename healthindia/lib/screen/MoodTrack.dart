import 'package:flutter/material.dart';


class Moodtracker extends StatefulWidget {
  @override
  _MoodtrackerState createState() => _MoodtrackerState();
}

class _MoodtrackerState extends State<Moodtracker> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff59c8b5),
          title: Text(
            'Mood Tracker',
            style: TextStyle(color: Colors.white),
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
               
        ],
      ),
      ),
    );
  }
}