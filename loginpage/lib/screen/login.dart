import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/screen/home.dart';
import 'package:loginpage/screen/registration.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  void _login() {
    final form = formKey.currentState;
    void _forgotPassword() {
      final form = formKey.currentState;
    }

    if (form.validate()) {
      form.save();

      // Email & password matched our validation rules
      // and are saved to _email and _password fields.
      _performLogin();
    }
  }

  void _performLogin() {
    // This is just a demo, so no actual login here.
    final snackbar = SnackBar(
      content: Text('Email: $_email, password: $_password'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  final TextEditingController _nameFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _name = "";
  //String _password = "";
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
              content:
                  Text("You Put Wrong Password!! Please Register Your Account"),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220.0),
        child: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back \n LOGIN!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Image.network(
                'https://www.inspectionsupport.net/wp-content/uploads/2014/07/LoginRed.jpg',
                fit: BoxFit.contain,
                width: 200,
                height: 390,
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              key: formKey,
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    icon: Icon(Icons.person, color: Colors.blue),
                  ),
                  validator: (val) =>
                      val.length < 8 ? 'Not a valid Name.' : null,
                  onSaved: (val) => _name = val,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter Your Email',
                      icon: Icon(Icons.email, color: Colors.blue)),
                  validator: (val) =>
                      !val.contains('@') ? 'Not a valid email.' : null,
                  onSaved: (val) => _email = val,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock_outline, color: Colors.blue),
                  ),
                  validator: (val) =>
                      val.length < 7 ? 'Password too short.' : null,
                  onSaved: (val) => _password = val,
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
                          //child: Center(
                          child: Text(
                            "Forgot Password?",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                //decoration: TextDecoration.underline,
                                // color: Colors.black,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
                          child: Text('New User?\nRegister New Account ',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                              // child: new Text('Login');
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Registration()));
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                ),
              ]))),
    );
  }
}

/* body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              width: 200,
              height: 90,
              margin: EdgeInsets.only(top: 15, bottom: 10),
              child: Image.network(
                  'https://www.inspectionsupport.net/wp-content/uploads/2014/07/LoginRed.jpg'),
            )
          ]),*/
/*body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
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
                  child: TextField(
                   onChanged: _nameListen,
                    controller: _nameFilter,
                    keyboardType: TextInputType.text,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
                    ],
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
        ])));
  }
}*/
