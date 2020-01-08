import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    var Controller;
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Registration Form For GeekyAnts Academy Course:',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
            ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 350,
                      height: 520,
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: TextField(
                            controller: Controller,
                        keyboardType: TextInputType.text,
                        inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),],
          
                            decoration: InputDecoration(
                              hintText: ' Enter Your Name',
                              icon: Icon(Icons.person, color: Colors.blue),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: TextField(
                            controller: Controller,
                        keyboardType: TextInputType.emailAddress,
                        
                            decoration: InputDecoration(
                              hintText: ' Enter Your Email',
                              icon: Icon(Icons.email, color: Colors.blue),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                          child: TextField(
                            controller: Controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly ],
          
                        decoration: InputDecoration(
                          hintText: ' Enter Your Ph No',
                          icon: Icon(Icons.phone, color: Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: TextField(
                        controller: Controller,
                        keyboardType: TextInputType.datetime,
                        inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly ],
          
                        decoration: InputDecoration(
                          hintText: ' Enter Your DOB',
                          icon: Icon(Icons.calendar_today, color: Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: ' password',
                          icon: Icon(Icons.lock_outline, color: Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: ' Reenter the password',
                          icon: Icon(Icons.lock_outline, color: Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60, left: 10, right: 10),
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
                              onPressed: () {},
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
            ],
          )
        ],
      )),
    );
  }
}
