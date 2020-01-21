import 'package:flutter/material.dart';
import 'package:healthindia/screen/registration.dart';
import 'package:healthindia/screen/calorie.dart';
import 'package:healthindia/screen/Heartbeat.dart';
import 'package:healthindia/screen/MoodTrack.dart';
import 'package:healthindia/screen/bmi.dart';


import '../Moodtrack.dart';
//import 'login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      body:Container(
        decoration: BoxDecoration(
      gradient: SweepGradient(
        colors: [Colors.blueGrey, Colors.green, Colors.teal, Colors.brown, Colors.blueGrey],
        stops: [0.0, 0.25, 0.5, 0.75, 1],
        startAngle: 0.5,
        endAngle: 1
      ),
      ),
      ),
      
    
      appBar: AppBar(
        title: Text(
          " Welcome to Healthy India ",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontSize: 25, color: Colors.black),
        ),
        
        backgroundColor: Colors.brown,
      ),
        
      
      drawer: Drawer(
        
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Mitali Mondal",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            accountEmail: Text(
              "mitalimondal450@gmail.com",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                "M",
                style: TextStyle(fontSize: 50.0, fontStyle: FontStyle.italic),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Notification',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'BMI Calculator',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bmical()));
            },
          ),
          ListTile(
            title: Text(
              'Calorie Calculator',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calorie()));
            },
          ),
          ListTile(
            title: Text(
              'Heartbeat Calculator',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Heartbeat()));
            },
          ),
          ListTile(
            title: Text(
              'MoodTracker',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Moodtrack()));
            },
          ),
        ]),
      ),
     /* body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
                width: 230,
                height: 190,
                margin: EdgeInsets.only(top: 15, bottom: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/healthyindia.jpeg'),
                ))
          ]),
        ]),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Notes'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Diet Plan'))
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){},
      ),*/
      
    );
  }
}
