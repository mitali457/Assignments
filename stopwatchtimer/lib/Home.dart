import 'package:flutter/material.dart';
import 'dart:async';

class StopwatchTimer extends StatefulWidget {
  @override
  StopwatchTimerState createState() => new StopwatchTimerState();
}

class StopwatchTimerState extends State<StopwatchTimer> {
  String buttonText = "Start";
  String stopwatchText = "00:00:00";
  var stopWatch = new Stopwatch();
  var timeout = const Duration(seconds: 1);

  void startTimer() {
    new Timer(timeout, handleTimeout);
  }

  void handleTimeout() {
    if (stopWatch.isRunning) {
      startTimer();
    }
    setState(() {
      setStopwatchText();
    });
  }

  void startStopButtonPressed() {
    setState(() {
      if (stopWatch.isRunning) {
        buttonText = "Start";

        stopWatch.stop();
      } else {
        buttonText = "Stop";
        stopWatch.start();
        startTimer();
      }
    });
  }

  void resetButtonPressed() {
    if (stopWatch.isRunning) {
      startStopButtonPressed();
    }
    setState(() {
      stopWatch.reset();
      setStopwatchText();
    });
  }

  void setStopwatchText() {
    stopwatchText = stopWatch.elapsed.inHours.toString().padLeft(2, "0") +
        ":" +
        (stopWatch.elapsed.inMinutes % 60).toString().padLeft(2, "0") +
        ":" +
        (stopWatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(260.0),
            child: AppBar(
              flexibleSpace: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://photos3.fotosearch.com/bthumb/CSP/CSP138/timer-time-drawing__k1384633.jpg',
                    fit: BoxFit.contain,
                    width: 200,
                    height: 380,
                  ),
                  Text("Stopwatch",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                ],
              ),
              elevation: 0.0,
              backgroundColor: Colors.white,
              brightness: Brightness.light,
            ),
          ),
          body: TimerStopWatch(),
        ),
      ),
    );
  }

  Widget TimerStopWatch() {
    return Column(
      children: <Widget>[
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: startStopButtonPressed,
                color: Colors.lime,
                child: Text(buttonText),
              ),
              RaisedButton(
                onPressed: resetButtonPressed,
                color: Colors.purple[200],
                child: Text("Reset"),
              ),
            ],
          ),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.none,
            child: Text(
              stopwatchText,
              style: TextStyle(
                fontSize: 72,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
