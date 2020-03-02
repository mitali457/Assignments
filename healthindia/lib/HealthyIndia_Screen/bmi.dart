import 'dart:math';

import 'package:flutter/material.dart';
import 'package:healthindia/HealthyIndia_Screen/calorie.dart';
import 'package:healthindia/HealthyIndia_Screen/homescreen.dart';
import 'package:healthindia/HealthyIndia_Screen/login.dart';

class Bmical extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Bmical> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController heightcontrol = TextEditingController();
  TextEditingController weightcontrol = TextEditingController();
  String bmistate = '';
  String bmirange = '';
  double bmicalculated;
      String bmi;
  void bmiCalculate() {
    double height = double.parse(heightcontrol.text);
    double weight = double.parse(weightcontrol.text);

    if (height != null && weight != null) {
      setState(() {
        bmicalculated=weight / pow(height / 100, 2);
       
        bmirange = bmicalculated.toString();

        if (bmicalculated < 18.50) {
          bmi =  " UnderWeight";
        } else if (bmicalculated >= 18.50 && bmicalculated <= 24.99) {
          bmi =  " Normal Weight";
        } else if (bmicalculated >= 25 && bmicalculated <= 29.99) {
          bmi = " Over Weight";
        } else {
          bmi =  " Obesity";
        }
        bmistate = bmi;
      });
    }
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
        child:AppBar(
  
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
            color: Colors.indigo,
          ),
          
        flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/61iSsiqXqqL._SY355_.png',
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
        //centerTitle: true,
        //backgroundColor: Colors.teal),
        body: new Container(
          alignment: Alignment.topCenter,
          child: new ListView(
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.teal, width: 5.0),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0)),
                ),
                height: 475,
                width: 190,
                margin: const EdgeInsets.all(10.0),
                // child: new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('BMI Chart',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),
                                )),
                            child: Center(
                              child: Text('BMI less than 18.50',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 17)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[200],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(5))),
                            child: Center(
                              child: Text('Underweight',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 17)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),
                                )),
                            child: Center(
                              child: Text('BMI 18.50 - 24.99',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 17)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[200],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(5))),
                            child: Center(
                              child: Text('Healthy Weight',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 17)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),
                                )),
                            child: Center(
                              child: Text('BMI 25.00 - 29.99',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 17)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[200],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(5))),
                            child: Center(
                              child: Text('Over Weight',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 17)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),
                                )),
                            child: Center(
                              child: Text('BMI 30 or more',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 17)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            width: 160,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[200],
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(5))),
                            child: Center(
                              child: Text('Obesity',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 15)),
                            ),
                          ),
                        ],
                      ),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                              'Formula for calculating BMI: Weight/Height * Height',
                              style: TextStyle(
                                  color: Colors.blue.withGreen(8),
                                  fontSize: 13,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),*/
                      new TextField(
                        controller: heightcontrol,
                        decoration: new InputDecoration(
                        
                            labelText: "Height",
                            hintText: "Enter height in meters",
                            icon: new Icon(Icons.assessment, color:Colors.indigo)),
                           
                      ),
                      new TextField(
                        controller: weightcontrol,
                        decoration: new InputDecoration(
                            labelText: "Weight",
                            hintText: "Enter weight in kgs",
                            icon: new Icon(Icons.storage, color:Colors.indigo)),
                      ),
                      new Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: new RaisedButton(
                            elevation: 5.0,
                            onPressed: () {
                              bmiCalculate();
                            },
                            color: Colors.teal,
                            child: new Text(
                              "Calculate",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 16.9),
                            ),
                          )),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' Your BMI is: $bmi',
                    hintStyle: TextStyle(
                        color: Colors.indigo,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      )
       );
      
    }
  }

