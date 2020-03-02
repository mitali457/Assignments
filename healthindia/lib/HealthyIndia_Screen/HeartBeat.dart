import 'package:flutter/material.dart';

class Heartbeat extends StatefulWidget {
  @override
  _HeartbeatState createState() => _HeartbeatState();
}

class _HeartbeatState extends State<Heartbeat> {
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
            'Heartbeat Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),

      ),
    );
  }
}
