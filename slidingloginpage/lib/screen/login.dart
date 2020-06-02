import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slidingloginpage/provider/loginprovider.dart';
import 'package:slidingloginpage/provider/signupprovider.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  bool isLogin = true;
  Animation<double> loginSize;
  AnimationController loginController;
  AnimatedOpacity opacityAnimation;
  Duration animationDuration = Duration(milliseconds: 270);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  String _email;
  String _password;
  String semail;
  String spassword;
  String _confirmpassword;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);

    loginController =
        AnimationController(vsync: this, duration: animationDuration);

    opacityAnimation =
        AnimatedOpacity(opacity: 0.0, duration: animationDuration);
  }

  validateFromAndLogin() {
    print('Validating From...');
    if (formKey.currentState.validate()) {
      print('validation sucessfully!!');
      formKey.currentState.save();
      print('enter the email $_email');
      print('enter the password $_password');
    } else {
      print('validation Error');
    }
  }

  validateFromAndSignUp() {
    if (formKey2.currentState.validate()) {
      print('validation sucessfully!!');
      formKey2.currentState.save();
      print('enter the email $semail');
      print('enter the password $spassword');
      print('enter the password $_confirmpassword');
    } else {
      print('validation Error');
    }
  }

  @override
  void dispose() {
    loginController.dispose();
    super.dispose();
  }

  Widget _buildLoginWidgets() {
    return Container(
      padding: EdgeInsets.only(bottom: 62, top: 16),
      width: MediaQuery.of(context).size.width,
      height: loginSize.value,
      decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(190),
              bottomRight: Radius.circular(190))),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AnimatedOpacity(
          opacity: loginController.value,
          duration: animationDuration,
          child: GestureDetector(
            onTap: isLogin
                ? null
                : () {
                    loginController.reverse();

                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
            child: Container(
              child: Text(
                'LOG IN'.toUpperCase(),
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginComponents() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Visibility(
          visible: isLogin,
          child: Padding(
            padding: const EdgeInsets.only(left: 42, right: 42),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white, height: 0.5),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',fillColor: Colors.cyan,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32)))),
                    validator: (val) =>
                        !val.contains('@') ? 'Not a valid email.' : null,
                    onSaved: (val) => _email = val,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white, height: 0.5),
                      obscureText: _obscureText,
                      controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          border: OutlineInputBorder(
                            
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                                  
                                  ),
                                  fillColor: Colors.cyan),
                      validator: (val) =>
                          val.length < 6 ? 'Password too short.' : null,
                      onSaved: (val) => _password = val,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      onPressed: () {
                        print('object');
                        validateFromAndLogin();
                        onPressedLogin(
                            context, emailController, passwordController);
                      },
                      child: Center(
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                              color: Colors.cyan, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegistercomponents() {
    return Padding(
      padding: EdgeInsets.only(left: 42, right: 42, top: 32, bottom: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Text(
              'Sign Up'.toUpperCase(),
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan),
            ),
          ),
          Form(
              key: formKey2,
              child: Column(children: <Widget>[
                TextFormField(
                  style: TextStyle(color: Colors.black, height: 0.5),
                  controller: email,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.cyan),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)))),
                  validator: (val) =>
                      !val.contains('@') ? 'Not a valid email.' : null,
                  onSaved: (val) => _email = val,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 16),
                  child: TextFormField(
                    obscureText: _obscureText,
                    controller: password,
                    style: TextStyle(color: Colors.black, height: 0.5),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.cyan,
                        ),
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.cyan),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32)))),
                    validator: (val) =>
                        val.length < 5 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val,
                  ),
                ),
                TextFormField(
                  obscureText: _obscureText,
                  controller: confirmpassword,
                  style: TextStyle(color: Colors.black, height: 0.5),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.cyan),
                      hintText: 'Confirm Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.cyan),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32)))),
                  validator: (val) =>
                      val.length < 5 ? 'Password too short.' : null,
                  onSaved: (val) => _password = val,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.only(top: 32),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: RaisedButton(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      onPressed: () {
                        print('object1');
                        validateFromAndSignUp();
                        onPressedRegistration(context, _email, _password);
                      },
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _defaultLoginSize = MediaQuery.of(context).size.height / 1.6;

    loginSize = Tween<double>(begin: _defaultLoginSize, end: 200).animate(
        CurvedAnimation(parent: loginController, curve: Curves.linear));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedOpacity(
              opacity: isLogin ? 0.0 : 1.0,
              duration: animationDuration,
              child: Container(child: _buildRegistercomponents()),
            ),
          ),
          if(isLogin)
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: isLogin && !loginController.isAnimating
                  ? Colors.white
                  : Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: _defaultLoginSize / 1.5,
              child: Visibility(
                visible: isLogin,
                child: GestureDetector(
                  onTap: () {
                    loginController.forward();
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: Center(
                    child: Text(
                      'Sign Up'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: loginController,
            builder: (context, child) {
              return _buildLoginWidgets();
            },
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Center(child: _buildLoginComponents()),
              ))
        ],
      ),
    );
  }
}
