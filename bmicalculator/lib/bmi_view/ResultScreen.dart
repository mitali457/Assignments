import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          shape: CustomShapeBorder(),
          
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              height: 100,
              width: 200,
              child: bmiModel.isNormal ? SvgPicture.asset("assets/happy.svg", fit: BoxFit.contain,) : SvgPicture.asset("assets/sad.svg", fit: BoxFit.contain,) ,
            ),

            SizedBox(
              height: 38,
            ),
            Text("Your BMI is ${bmiModel.bmi.round()}", style: TextStyle(color: Colors.deepPurple, fontSize: 34, fontWeight: FontWeight.w700),),
            Text("${bmiModel.comments}", style: TextStyle(color: Colors.purple, fontSize: 24, fontWeight: FontWeight.w500),),

            SizedBox(height: 36,),

            bmiModel.isNormal ?
            Text("Hurray!! 🤗 Your BMI is Normal.", style: TextStyle(color: Colors.deepPurple, fontSize: 18, fontWeight: FontWeight.w700),)
                :
            Text(" Sadly!!😔 Your BMI is not Normal.", style: TextStyle(color: Colors.deepPurple, fontSize: 18, fontWeight: FontWeight.w700),),
            SizedBox(height: 16,),

            Container(
              child: FlatButton.icon(
                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                onPressed: (){

                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                label: Text("LET CALCULATE AGAIN",style: TextStyle(fontWeight:FontWeight.bold),),
                textColor: Colors.white,
                
                color: Colors.purple,

              ),
              width: 300,
              padding: EdgeInsets.only(left: 16, right: 16,top: 30),
            )

          ],
        ),
      )
    );
  }
}
class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {

    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30, rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40, rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40, rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75, rect.height + 50
    );
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30, rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}