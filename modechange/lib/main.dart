import 'package:flutter/material.dart';

void main() => runApp(Modechange());

class Modechange extends StatelessWidget {
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
  MyHomepagestate createState() => MyHomepagestate();
}

class MyHomepagestate extends State<MyHomepage> {
  String day = 'Change to Night Mode';
  String night = 'Change to Day Mode';
  Color dayappbg = Colors.orangeAccent;

  Color daybg = Colors.yellow;

  AssetImage dayimage = AssetImage('assets/sun.png');
  //AssetImage nightimage = AssetImage('assets/moon.jpeg');

  String daystate = 'Good Morning !!';
  String nightstate = 'Good Night !!';
  List<bool> isSelected = [true, false];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: daybg,
      appBar: AppBar(
        backgroundColor: dayappbg,
        title: Center(
            child: Text(
          day,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ToggleButtons(
                  selectedBorderColor: Colors.black,
                  selectedColor: Colors.blueGrey,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  borderWidth: 2,
                  borderColor: Colors.grey,
                  children: <Widget>[
                    Icon(Icons.signal_cellular_no_sim),
                    Icon(
                      Icons.signal_cellular_no_sim,
                      color: Colors.black,
                    )
                  ],
                  isSelected: isSelected,
                  onPressed: (int index) {
                    setState(() {
                      for (int buttonIndex = 0;
                          buttonIndex < isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected[buttonIndex] = !isSelected[buttonIndex];
                          dayappbg = Colors.indigo;
                          Text(
                            night,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          );
                          dayimage = AssetImage('assets/moon.jpeg');
                          daybg = Colors.indigo;
                          Text(
                            nightstate,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          );
                        } else {
                          isSelected[buttonIndex] = false;
                          Text(
                            day,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          );
                          dayappbg = Colors.orangeAccent;
                          dayimage = AssetImage('assets/sun.png');
                          daybg = Colors.yellow;
                          Text(
                            daystate,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          );
                        }
                      }
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
          Text(
            daystate,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          )
        ],
      ),
    );
  }
}
