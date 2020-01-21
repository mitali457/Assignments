import 'package:flutter/material.dart';


class Moodtrack extends StatefulWidget {
  @override
  _MoodtrackerState createState() => _MoodtrackerState();
}

class _MoodtrackerState extends State<Moodtrack> {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.brown,
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