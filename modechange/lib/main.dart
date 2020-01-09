import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepagestate createState() => _MyHomepagestate();
}

class _MyHomepagestate extends State<MyHomepage> {
  Text day = Text(
    'Change to Night Mode',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );
  Text night = Text(
    'Change to Day Mode',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );

  Color dayappbg = Colors.orange[800];

  Color nightappbg = Colors.deepPurple[900];
  Color daybg = Colors.orange[200];
  Color nightbg = Colors.deepPurpleAccent[800];
  AssetImage dayimage = AssetImage('assets/sun.png');
  AssetImage nightimage = AssetImage('assets/moon.jpeg');
  Text daystate = Text(
    'Good Morning!!!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow[800]),
  );
  Text nightstate = Text(
    'Good Night!!!',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: daybg,
      appBar: AppBar(
        title: Center(
          child: day,
        ),
        backgroundColor: dayappbg,
      ),
      /*body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15.0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text("Search"),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),*/
    ))

    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: dayimage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: daystate,
        )
      ],
    );
  }
}


