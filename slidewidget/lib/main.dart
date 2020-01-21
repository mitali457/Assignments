import 'package:flutter/material.dart';

import 'package:demoji/demoji.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 0;

  String _emojify() {
    switch (_value.floor()) {
      case 0:
        return Demoji.angry;
      case 1:
        return Demoji.neutral_face;
      case 2:
        return Demoji.sweat_smile;
      case 3:
        return Demoji.smiley;
      case 4:
        return Demoji.star_struck;
      case 5:
        return Demoji.heart_eyes;
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slideremoji\u{1F499}',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo)),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Container(
            child: Slider(
              value: _value,
              inactiveColor: Colors.greenAccent,
              onChanged: (_newValue) => setState(() {
                _value = _newValue;
              }),
              max: 5,
              min: 0,
              divisions: 5,
              label: _emojify(),
            ),
          ),
        ),
      ),
    );
  }
}
