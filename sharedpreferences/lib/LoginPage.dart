
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/HomeScreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool _obscureText = true;

  bool checkValue = false;

  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white12,
      ),
      body: new SingleChildScrollView(
        child: _body(),
        scrollDirection: Axis.vertical,
      ),
    );
  }

  Widget _body() {
    return new Container(
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.all(30.0),
            child: Image.network('https://pngimage.net/wp-content/uploads/2018/06/login-button-png-6.png'),
          ),
          new TextField(
            controller: username,
            decoration: InputDecoration(
                hintText: "Enter Your Name",
                icon: Icon(Icons.person, color: Colors.blue),
                hintStyle: new TextStyle(color: Colors.grey.withOpacity(0.3))),
          ),
          new TextField(
            obscureText: _obscureText,
              controller: password,
              
              decoration: InputDecoration(
                  hintText: "password",
                  //hintStyle:new TextStyle(color: Colors.grey.withOpacity(0.3))), 
                  icon: Icon(Icons.lock, color: Colors.blue),
                  suffixIcon: new GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: new Icon(_obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                )),
          ),
                  
                      
          new CheckboxListTile(
            value: checkValue,
            onChanged: _onChanged,
            title: new Text("Remember me"),
            controlAffinity: ListTileControlAffinity.leading,
          ),
          new Container(
            decoration:
                new BoxDecoration(border: Border.all(color: Colors.black)),
            child: new ListTile(
              title: new Text(
                "Login",
                textAlign: TextAlign.center,
              ),
              onTap: _navigator,
            ),
          )
        ],
      ),
    );
  }

  _onChanged(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      checkValue = value;
      sharedPreferences.setBool("check", checkValue);
      sharedPreferences.setString("username", username.text);
      sharedPreferences.setString("password", password.text);
     
     setData();
    });
  }

 setData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      checkValue = sharedPreferences.getBool("check");
      if (checkValue != null) {
        if (checkValue) {
          username.text = sharedPreferences.getString("username");
          password.text = sharedPreferences.getString("password");
        } else {
          username.clear();
          password.clear();
          sharedPreferences.clear();
        }
      } else {
        checkValue = false;
      }
    });
  }

  _navigator() {
    if (username.text.length != 0 || password.text.length != 0) {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(
              builder: (BuildContext context) => new HomeScreen(name:username.text)),
          (Route<dynamic> route) => false);
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          child: AlertDialog(
            content: new Text(
              "username or password \ncan't be empty",
              style: new TextStyle(fontSize: 16.0),
            ),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text("OK"))
            ],
          ));
    }
  }
}