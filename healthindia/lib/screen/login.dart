import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthindia/screen/bmi.dart';
import 'package:healthindia/screen/calorie.dart';
import 'package:healthindia/screen/homescreen.dart';
import 'package:healthindia/screen/registration.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _nameFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _name = "";
  String _password = "";
  _LoginPageState() {
    _nameFilter.addListener;
    _passwordFilter.addListener;
  }

  void _nameListen(name) {
    if (_nameFilter.text.isEmpty) {
      _name = "";
    } else {
      _name = _nameFilter.text;
    }
  }

  void _passwordListen(password) {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  void message() {
    if (_name == _password)
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login'),
              content: Text("You Login successfully!!"),
            );
          });
    else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login'),
              content: Text("You Put Wrong Password!! Please Register Your Account"),
              
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Healthy India',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,),
            actions: <Widget>[
             
          ]
        ),
        drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green.withRed(10)),
            accountName: Text(
              "Mitali Mondal",
              style: TextStyle(
                  color: Colors.indigo,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            accountEmail: Text(
              "mitalimondal450@gmail.com",
              style: TextStyle(
                  color: Colors.indigo,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.brown
                  : Colors.white,
              child: Text(
                "M",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            title: Text(
              'BMI Calculator',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bmical()));
            },
          ),
          ListTile(
            title: Text(
              'Calorie Calculator',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward, color: Colors.brown),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calorie()));
            },
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.brown,
            ),
            onTap: () {},
          ),
        ]),
      ),
           body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.only(top: 30, bottom: 10),
                        child: CircleAvatar(
                          backgroundImage:AssetImage('assets/healthyindia.jpeg'),
                         
                        ),
                      )
                    ],
                  ),
        
       
          
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              width: 350,
              height: 240,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: TextFormField(
                   onChanged: _nameListen,
                    controller: _nameFilter,
                    keyboardType: TextInputType.text,
                    
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
                    validator: (value) {
              if(value.length < 2){
                return 'Name not long enough';
              }
                    },
                    decoration: InputDecoration(
                      hintText: ' Enter Your Name',
                      icon: Icon(Icons.person, color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: TextField(
                    onChanged: _passwordListen,
                    controller: _passwordFilter,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: ' password',
                      icon: Icon(Icons.lock_outline, color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: FlatButton(
                          onPressed: () {
                            message();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        child: FlatButton(
                          onPressed: () {
                            message();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()));
                          },
                          child: Text(
                            'Register Your Account',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ]
        )
            ]
            )
           ),
        );
  }
}
