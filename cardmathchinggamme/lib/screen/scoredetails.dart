import 'package:cardmathchinggamme/model/score.dart';
import 'package:cardmathchinggamme/routes/route.dart';


import 'package:cardmathchinggamme/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScoreDetails extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
  
}
Score score = Score();

class _NewScreenState extends State<ScoreDetails> {
  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:  AppBar(
        backgroundColor: Colors.red,
        title: appbartext,
      ),
      body: Center(
        child: Container(
                    child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Text("You Won The Game 🥳🥳",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Consumer<Score>(builder: (context, score, child){
       return Text("Your Score : ${score.score}/40",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ));}),
                      SizedBox(
                        height: 40,
                      ),
                      Consumer<Score>(builder: (context, score, child){
       return RaisedButton(
          color:Colors. black,
          onPressed: (){
           Navigator.of(context).pushNamed("/home");
          score.reStart();
            },
          child: Text('Replay', style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),),
      );}),
                    ]
      ),
        ),
      )
    );
  }
}