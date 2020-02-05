import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(Timer());

class Timer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:StopwatchTimer(),
    );
  }
}