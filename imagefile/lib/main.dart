import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Enjoy The NatureImage!'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Image.network(
              'https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg',
              width: 180,
              height: 130,
              fit: BoxFit.cover,
              
            ),
             Image.network(
              'http://www.freeimageslive.com/galleries/nature/coastline/pics/seashells2564.jpg',
              width: 180,
              height: 130,
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.freeimageslive.com/galleries/nature/coastline/pics/dead_starfish.jpg',
              width: 180,
              height: 130,
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://stockmedia.cc/nature_macro/fungus.jpg',
              width: 180,
              height: 130,
              fit: BoxFit.cover,
            ),
          ])),
    );
  }
}
