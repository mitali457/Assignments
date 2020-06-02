
import 'dart:math';

import 'package:bmicalculator/bmi_model/BMIModel.dart';
import 'package:bmicalculator/bmi_utils/colors.dart';
import 'package:bmicalculator/bmi_view/ResultScreen.dart';
import 'package:flutter/material.dart';



class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  double _kheightOfUser = 100.0;
  double _kweightOfUser = 40.0;

  double _kbmi = 0;

  BMIModel _kbmiModel;
  //Textfieldbmi ktextstyle;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top:50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 500,
                  child:Image.network(
  'https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/09/31/44/09314459-9f77-2e1b-89f0-c595490074ee/AppIcon-1x_U007emarketing-85-220-6.png/320x0w.png',
)
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text("BMI Calculator", style: TextStyle(color: ColorTheme.primary, fontSize: 44, fontWeight: FontWeight.w900),),
              
              Text("We care about your health 😊", style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(
                height: 22,
              ),

              Text("Height (cm)", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 80.0,
                  max: 250.0,
                  onChanged: (height){
                    setState(() {
                      _kheightOfUser = height;
                    });
                  },
                  value: _kheightOfUser,
                  divisions: 100,
                  activeColor: Colors.purple,
                  label: "$_kheightOfUser",
                ),
              ),

              Text("$_kheightOfUser cm", style: TextStyle(color: ColorTheme.primary, fontSize: 18, fontWeight: FontWeight.w900),),

              SizedBox(height: 24,),

              Text("Weight (kg)", style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w400),),

              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 30.0,
                  max: 120.0,
                  onChanged: (height){
                    setState(() {
                      _kweightOfUser = height;
                    });
                  },
                  value: _kweightOfUser,
                  divisions: 100,
                  activeColor: Colors.purple,
                  label: "$_kweightOfUser",
                ),
              ),

              Text("$_kweightOfUser kg", style: TextStyle(color: Colors.deepPurple, fontSize: 18, fontWeight: FontWeight.w900),),

              SizedBox(height: 16,),

              Container(
                child: FlatButton.icon(
                  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                    onPressed: (){

                      // setState(() {
                        _kbmi=_kweightOfUser / pow(_kheightOfUser / 100, 2);
                        
                        if(_kbmi >= 18.5 && _kbmi <= 25){
                          _kbmiModel = BMIModel(bmi: _kbmi, isNormal: true, comments: "You are Totaly Fit 🏋🏻‍♀️");
                        }else if(_kbmi < 18.5){
                          _kbmiModel = BMIModel(bmi: _kbmi, isNormal: false, comments: "You are Underweighted");
                        }else if(_kbmi > 25 && _kbmi <= 30){
                          _kbmiModel = BMIModel(bmi: _kbmi, isNormal: false, comments: "You are Overweighted");
                        }else{
                          _kbmiModel = BMIModel(bmi: _kbmi, isNormal: false, comments: "You are Obesed");
                        }
                    //  });

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ResultScreen(bmiModel: _kbmiModel,)
                      ));
                    },
                    icon: Icon(Icons.favorite, color: Colors.white,),
                    label: Text("CALCULATE"),
                  textColor: Colors.white,
                  color: Colors.purple,

                ),
                width: 200,
                padding: EdgeInsets.only(left: 16, right: 16,top: 60),
              )

            ],
          ),
        ),
      ),
    );
  }
}