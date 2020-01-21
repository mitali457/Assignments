import 'package:flutter/material.dart';
import 'package:loginpage/screen/registration.dart';

import 'login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar( title: Text(" GeekyAnts ",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 50,color: Colors.black),),
      backgroundColor: Colors.brown,
      ),
      
         //body: Center(child: Text('My Page!')),
        drawer: Drawer(
           child: ListView(
             padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
  accountName: Text("Mitali Mondal",
  style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
  accountEmail: Text("mitalimondal450@gmail.com",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
  currentAccountPicture: CircleAvatar(
    backgroundColor:
        Theme.of(context).platform == TargetPlatform.iOS
            ? Colors.blue
            : Colors.white,
    child: Text(
      "M",
      style: TextStyle(fontSize: 50.0,fontStyle: FontStyle.italic),
    ),
  ),
),
            /*DrawerHeader(
              child: Text('Hello Mitali'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),*/
            
            ListTile(
              title: Text('Login',
              style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
              
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Registration',
              style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()));
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
          ]
      ),
      ),
      body: Center(
       child: 
       Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Container(
                    width: 200,
                    height: 90,
                    margin: EdgeInsets.only(top: 15, bottom: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/geeky.png'),
                    ))
              ]),
            ]
       ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown,
        
       //currentIndex: 0, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
           
           
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
   );
      
      
      
  }
}
