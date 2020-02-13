import 'package:flutter/material.dart';

import 'package:sharedpreferences/LoginPage.dart';

class HomeScreen extends StatelessWidget {
 
  final String name;

 HomeScreen({Key key, @required this.name}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Home"),
        shape: CustomShapeBorder(),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new LoginPage()),
                    (Route<dynamic> route) => false);
              })
        ],
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Text(
          "Welcome to $name.!",
          style: new TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
  class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30,
        rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75,
        rect.height + 50);
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30,
        rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}