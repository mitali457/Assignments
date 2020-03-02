import 'package:flutter/material.dart';
import 'package:healthindia/HealthyIndia_Screen/bmi.dart';
import 'package:healthindia/HealthyIndia_Screen/homescreen.dart';
import 'package:healthindia/HealthyIndia_Screen/login.dart';

class Calorie extends StatefulWidget {
  @override
  _CaloriecalciState createState() => _CaloriecalciState();
}

class _CaloriecalciState extends State<Calorie> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController heightcontrol = TextEditingController();
  TextEditingController weightcontrol = TextEditingController();
  TextEditingController agecontrol = TextEditingController();
  String calorieState = '';
  String _radioValue; //Initial definition of radio button value

  void caloriecal() {
    setState(() {
      double height = double.parse(heightcontrol.text);
      double weight = double.parse(weightcontrol.text);
      double age = double.parse(agecontrol.text);
      double femaleCaloriecalculated = 10 * weight + 6.25 * height - 5 * age + 5;
      double maleCaloriecalculated= 10 * weight + 6.25 * height - 5 * age - 161;
      if (_radioValue == 'Female') {
        calorieState = femaleCaloriecalculated.toString();
      } else {
        calorieState = maleCaloriecalculated.toString();
      }
      print(calorieState);
    });
  }

  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
               key: _scaffoldKey,
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(260.0),
                  child: AppBar(
                    automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
            color: Colors.purple.withBlue(26),
          ),
          
                 

                    flexibleSpace: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //
                        Image.network(
                          'https://ps.w.org/calorie-calculator/assets/icon-256x256.png?rev=1524465',
                          fit: BoxFit.contain,
                          width: 400,
                          height: 300,
                        ),
                      ],
                    ),
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    brightness: Brightness.light,
                  ),
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
              'Logout',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.brown,
            ),
            onTap: () {
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ]),
      ),
                body: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('CALORIE CALCULATOR:',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.indigo,
                                fontSize: 24,
                                fontWeight: FontWeight.bold))
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          width: 225,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              )),
                          child: Center(
                            child: Text('Height in meters :',
                                style: TextStyle(
                                    color: Colors.indigo[600],
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          width: 185,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: TextField(
                              controller: heightcontrol,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your height',
                                hintStyle: TextStyle(
                                    color: Colors.brown[90], fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          width: 225,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              )),
                          child: Center(
                            child: Text('Weight in KG :',
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          width: 185,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: TextField(
                              controller: weightcontrol,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your Weight',
                                hintStyle: TextStyle(
                                    color: Colors.brown[90], fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          width: 225,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              )),
                          child: Center(
                            child: Text('Age in years :',
                                style: TextStyle(
                                    color: Colors.indigo[600],
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          width: 185,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: TextField(
                              controller: agecontrol,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your Age',
                                hintStyle: TextStyle(
                                    color: Colors.brown[90], fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(8.0),
                    ),
                    // new Divider(height: 5.0, color: Colors.black),
                    // new Padding(
                    //  padding: new EdgeInsets.all(8.0),
                    //),
                    new Text(
                      'Gender is :',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          color: Colors.indigo),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Radio(
                              value: 'Female',
                              groupValue: _radioValue,
                              onChanged: radioButtonChanges,
                            ),
                            Text(
                              "Female",
                              style: (TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                            ),
                          ]),
                          Row(
                            children: <Widget>[
                              Radio(
                                value: 'Male',
                                groupValue: _radioValue,
                                onChanged: radioButtonChanges,
                              ),
                              Text(
                                "Male",
                                style: (TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 226,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: FlatButton(
                            onPressed: () {
                              caloriecal();
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 5, top: 5),
                              width: 155,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.purple.withBlue(26),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  )),
                              child: Center(
                                child: Text('Caluclate Calorie',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 15, top: 19),
                          width: 410,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent[900],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text('Your Calorie is:$calorieState',
                                style: TextStyle(
                                    color: Colors.indigo.withRed(6),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    )
                  ]),
                ))));
  }
}
