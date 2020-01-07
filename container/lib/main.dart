import 'dart:math';

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
        title: Text('Container'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(100)),
              margin: EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/emoji.png'),
              ),
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Center(
                child: Text(
                  'KEEP SMILING ALWAYS',
                style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blue, Colors.red])),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                width: 370,
                height: 100,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 85,
                        height: 85,
                        color: Colors.grey,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: 70,
                        height: 70,
                        color: Colors.green,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: 60,
                        height: 60,
                        color: Colors.indigo,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ]),

                      

                  ],
                )
                )
          ]
          ),

                              Row( 
                    children: <Widget>[
                     Container(
                       margin: EdgeInsets.all(10),
                       width: 300,
                       height: 260,
                       color: Colors.white,
                       child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: 100,
                        height: 85,
                        color: Colors.indigo,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 90,
                        height: 85,
                        color: Colors.pink,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: 106,
                        height: 85,
                        color: Colors.deepPurple,
                      ),
                      
                    ]
                      ),
                       Row(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width:70,
                        height: 74,
                        color: Colors.green,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 70,
                        height: 70,
                        color: Colors.blue,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: 160,
                        height: 70,
                        color: Colors.yellow,
                      ),
                      
                    ]
                      ),
                      Row(children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: 100,
                        height: 100,
                        color: Colors.teal,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 110,
                        height: 100,
                        color: Colors.purple,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: 90,
                        height: 100,
                        color: Colors.orange,
                      ),
                      
                      
                    ]
                      )
        ],
      )
      ),
               ]
                              ),
                              Row(children: <Widget>[
                                Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            constraints: BoxConstraints.expand(height: 100, width: 100),
            color:Colors.purple ,
            child: Text("this.transform",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),),
          ),
      Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            constraints: BoxConstraints.expand(width: 70, height: 100),
            color: Colors.purple,
            transform: Matrix4.rotationY(pi / 4)..rotateX(pi / 4),
            child: Text("this.transform",
            style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
            )
      
          )
                             ]
               )

        ]))
    );
  }
}
