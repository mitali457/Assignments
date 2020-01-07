import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
      //title: 'welcome',
      ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color containerback = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Rainbow',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 180,
                  margin: EdgeInsets.only(top: 10, bottom: 7),
                  decoration: BoxDecoration(
                      color: containerback,
                      image: DecorationImage(
                          image: AssetImage('assets/images.png'),
                          fit: BoxFit.contain)),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 40,
                  margin: EdgeInsets.only(top: 9),
                  child: FlatButton(
                      color: Colors.red,
                      child: Text('Red',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Colors.red;
                        });
                      }),
                ),
                Container(
                  width: 350,
                  height: 40,
                   margin: EdgeInsets.only(top: 9),
                  child: FlatButton(
                      color: Colors.orange,
                      child: Text('Orange',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Colors.orange;
                        });
                      }),
                ),
                Container(
                  width: 350,
                  height: 40,
                   margin: EdgeInsets.only(top: 9),
                  child: FlatButton(
                      color: Colors.yellow,
                      child: Text("Yellow",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Colors.yellow;
                        });
                      }),
                ),
                Container(
                  width: 350,
                  height: 40,
                   margin: EdgeInsets.only(top: 9),
                  child: FlatButton(
                      color: Colors.green,
                      child: Text("Green",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Colors.green;
                        });
                      }),
                ),
                Container(
                  width: 350,
                  height: 40,
                   margin: EdgeInsets.only(top: 9),
                  child: FlatButton(
                      color: Colors.blue,
                      child: Text("Blue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Colors.blue;
                        });
                      }),
                ),
                Container(
                  width: 350,
                  height: 40,
                   margin: EdgeInsets.only(top:9),
                  child: FlatButton(
                      color: Colors.indigo,
                      child: Text("Indigo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Colors.indigo;
                        });
                      }),
                ),
                Container(
                  width: 350,
                  height: 40,
                   margin: EdgeInsets.only(top:9),
                  child: FlatButton(
                      color: Color(0xff302c9c),
                      child: Text("Violet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        setState(() {
                          containerback = Color(0xff302c9c);
                        });
                      }),
                ),
              ],
            )
          ])
        ],
      )),
    );
  }
}
