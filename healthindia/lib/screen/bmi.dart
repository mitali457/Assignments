import 'package:flutter/material.dart';

class Bmical extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Bmical> {
  TextEditingController heightcontrol = TextEditingController();
  TextEditingController weightcontrol = TextEditingController();
  String bmistate = '';
  String bmirange = '0.00';
  void bmiCalculate() {
    setState(() {
      double height = double.parse(heightcontrol.text);
      double weight = double.parse(weightcontrol.text);
      String bmi;
      double bmicalculated = weight / (height * height);
      bmirange = bmicalculated.toString();

      if (bmicalculated < 18.50) {
        bmi = "UnderWeight";
      } else if (bmicalculated > 18.50 && bmicalculated <= 24.99) {
        bmi = "Normal Weight";
      } else if (bmicalculated > 24.99 && bmicalculated <= 29.99) {
        bmi = "Over Weight";
      } else {
        bmi = "Obesity";
      }
      bmistate = bmi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
      ),
      //centerTitle: true,
      //backgroundColor: Colors.teal),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.teal, width: 5.0),
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0)),
            ),
            height: 675,
            width: 190,
            margin: const EdgeInsets.all(10.0),
            // child: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //body: SingleChildScrollView(
                  //child: Column(
                  // children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 350,
                        height: 200,
                        margin: EdgeInsets.only( bottom: 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/bmical.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
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
                  Row(
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
                  ),
                  new TextField(
                    // controller: _heightController,
                    decoration: new InputDecoration(
                        labelText: "Height",
                        hintText: "Enter height in meters",
                        icon: new Icon(Icons.assessment)),
                  ),
                  new TextField(
                    //controller: _weightController,
                    decoration: new InputDecoration(
                        labelText: "Weight",
                        hintText: "Enter weight in kgs",
                        icon: new Icon(Icons.storage)),
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
                      )
                      ),
                ]
                ),
          
          ),
           Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: ' Your BMI is: $bmirange',
                          hintStyle: TextStyle(color: Colors.indigo,fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                    ),
                    ),
                  
            ],
        ),
      ),
          );
  }
}
