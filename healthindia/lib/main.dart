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
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Healthy India'),
        ),
        body: 
            SingleChildScrollView(
              child: Stack(
children: <Widget>[
  Column(
    mainAxisAlignment:MainAxisAlignment.start ,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(top: 25,bottom: 15),
            child: CircleAvatar(
            backgroundImage:AssetImage('assets/healthyindia.jpeg'),
            )
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Welcome to Healthy India!',style: TextStyle(color: Colors.blue,fontSize:19))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 350,
            height: 260,
            margin: EdgeInsets.only(top: 20,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 2)],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: TextField(
                  decoration: InputDecoration(
                    hintText: ' Username',
                    icon: Icon(Icons.person,color:Colors.blue),  
                  ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: TextField(
                    obscureText: true,
                  decoration: InputDecoration(
                    hintText: ' password',
                    icon: Icon(Icons.lock_outline,color:Colors.blue),
                  ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: FlatButton(
                          onPressed: (){},
                          child: Text('Login',style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: FlatButton(
                          onPressed: (){},
                          child: Text('Sign up',style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          )
        ],
      )
    
    ]
              ),
]
              )
            )
              );
            
    


  

              
            
          
            
  
  }
}
