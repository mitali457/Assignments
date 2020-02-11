import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthindia/screen/bmi.dart';
import 'package:healthindia/screen/calorie.dart';
import 'package:healthindia/screen/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registration extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Registration> 
{
  String _name="";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Registration For Healthy India"),
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
        child: Center(
              
              
                  child: 
         Column(mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Container(
                      width: 200,
                      height: 90,
                      margin: EdgeInsets.only(top: 15, bottom: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/healthyindia.jpeg'),
                      ))
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 350,
                        height: 420,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Name',
                                hintText: ' Enter Your Name',
                                icon: Icon(Icons.person, color: Colors.blue)),
                             // controller: Controller,
                            keyboardType: TextInputType.text,
                              onSaved: (String val)
                          {
                            _name = val;
                          },
                           validator: (_name)
                          {
                            if (_name.length < 6)
                            return 'Name must be more than 5 character';
                            else
                            return null;
                          },
                        
                          inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),],
            
                              
                              ),
                            
                          ),
                           Padding(
                            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                            child: TextFormField(
                              //controller: Controller,
                          
                        
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: ' Enter Your Email',
                                icon: Icon(Icons.email, color: Colors.blue)),
                                keyboardType: TextInputType.emailAddress,
                               // validator: validateEmail,
                                onSaved:
                                (String val)
                                {
                                  //_email=val;
                                },
                            ),

                                
                            
                            
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                            child: TextField(
                              //controller: Controller,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly ],
            
                          decoration: InputDecoration(
                            hintText: ' Enter Your Ph No',
                            icon: Icon(Icons.phone, color: Colors.blue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          //controller: Controller,
                          keyboardType: TextInputType.datetime,
                          inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly ],
            
                          decoration: InputDecoration(
                            hintText: ' Enter Your DOB',
                            icon: Icon(Icons.calendar_today, color: Colors.blue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: ' password',
                            icon: Icon(Icons.lock_outline, color: Colors.blue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: ' Reenter the password',
                            icon: Icon(Icons.lock_outline, color: Colors.blue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 22,
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
                                },
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
      ));
    
  }
}
        