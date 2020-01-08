import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('TextWidget',style: TextStyle(color: Colors.white,fontSize: 38,fontStyle: FontStyle.italic)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to Flutter!!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Lato-Italic.ttf',
                  fontSize: 49,
                  color: Colors.deepPurple[300]),
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),),
              margin: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/flutter.png'),
              ),
            ),
            Text(
              'It is a very nice UI Framework!!',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Lato-BlackItalic.ttf',
                  fontSize: 45,
                  color: Colors.deepPurple[300]),
            ),
            Text(
              'It supports both Android & IOS!!',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Lato-Regular.ttf',
                  fontSize: 37,
                  color: Colors.deepPurple[300]),
            ),
            Text(
              'Flutter apps are written in the Dart language!!',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Lato-ThinItalic.ttf',
                  fontSize: 30,
                  color: Colors.deepPurple[300]),
            ),
          ],
        ),
      ),
    );
  }
}
