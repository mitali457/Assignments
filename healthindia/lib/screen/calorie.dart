import 'package:flutter/material.dart';

class Calorie extends StatefulWidget {
  @override
  _CaloriecalciState createState() => _CaloriecalciState();
}

class _CaloriecalciState extends State<Calorie> {
 TextEditingController heightcontrol = TextEditingController();
  TextEditingController weightcontrol = TextEditingController();
  TextEditingController agecontrol = TextEditingController();
 /* void caloriecal(){
    setState(() {
      double height = double.parse(heightcontrol.text);
     double weight = double.parse(weightcontrol.text);
     double age = double.parse(heightcontrol.text);
     String calorie;
     double caloriecalculated ;
    var BMRm = 10 * weight + 6.25 * height - 5 * age + 5  ;       
     var BMRw = 10 * weight + 6.25 * height - 5 * age - 161 ;    
    });
  }*/
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Calorie Calculator',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 25),
          
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  Text('CALORIE Calculate:',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                          )
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom:10),
                    width: 225,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.purple[50],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Height in meters :',
                          style: TextStyle(color: Colors.indigo[600], fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    width: 185,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      controller: heightcontrol,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Enter your height',
                          hintStyle: TextStyle(color: Colors.brown[90],fontSize: 13),
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
                    margin: EdgeInsets.only(bottom: 10,top: 10),
                    width: 225,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Weight in KG :',
                          style: TextStyle(color: Colors.indigo, fontSize: 18,fontWeight: FontWeight.bold,)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10,top: 10),
                    width: 185,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      controller: weightcontrol,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Enter your Weight',
                          hintStyle: TextStyle(color: Colors.brown[90],fontSize: 13),
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
                        color: Colors.purple[50],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                    child: Center(
                      child: Text('Age in years :',
                          style: TextStyle(color: Colors.indigo[600], fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    width: 185,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                       child:TextField(
                      controller: agecontrol,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: 'Enter your Age',
                          hintStyle: TextStyle(color: Colors.brown[90],fontSize: 13),
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
                        color: Colors.indigo
                      ),
                    ),
              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Radio(
                          value: 0,
                          //groupValue: _radioValue1,
                          //onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Female',
                          style: new TextStyle(fontSize: 22,color: Colors.indigo),
                        ),
                        new Radio(
                          value: 1,
                         // groupValue: _radioValue1,
                          //onChanged: _handleRadioValueChange1,
                        ),
                        new Text(
                          'Male',
                          style: new TextStyle(color: Colors.indigo,
                            fontSize: 22,
                          ),
                        ),
      
            ]
          ),
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Container(
                        width: 226,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blueGrey[50],
                        ),
                 child: FlatButton(
                          onPressed: () {
                     // calorieCalculate();
                    },
                     child: Container(
                    margin: EdgeInsets.only(bottom: 5,top: 5),
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
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ),
                  ),
                 ),
                   ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5,top: 5),
                    width: 185,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                       child:TextField(
                      
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          hintText: ' Your Calorie is: ',
                          hintStyle: TextStyle(color: Colors.indigo,fontSize: 19,fontWeight: FontWeight.bold),
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
                    margin: EdgeInsets.only(bottom: 15,top: 19),
                    width: 410,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('caloriestate',
                          style: TextStyle(color: Colors.indigo.withRed(6), fontSize: 29,fontWeight: FontWeight.bold)),
                    ),
                  ),

                ],
              )
            ]
        ),
        )
    );
  }
}