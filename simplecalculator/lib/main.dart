import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "";
  String radioValue;
  bool isButtonDisabled;

  buttonPressed(String buttonText) {
    if (radioValue == 'Int') {
      if (buttonText == '.') {
        isButtonDisabled ? null : result;
      }
    }
    setState(() {
      if (buttonText == "C") {
        equation = "0";
        result = "0";
      } else if (buttonText == "Del") {
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try {
          Parser perser = Parser();
          Expression exp = perser.parse(expression);

          ContextModel calculator = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, calculator)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          padding: EdgeInsets.all(16.0),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          )),
    );
  }

  void radioButtonChanges(String value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.thecalculatorsite.com/images/header/logo.png',
                fit: BoxFit.contain,
                width: 250,
                height: 200,
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white24,
          brightness: Brightness.light,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              equation,
              style: TextStyle(
                fontSize: 60,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              result,
              style: TextStyle(fontSize: 40),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: <Widget>[
            Row(children: <Widget>[
              Radio(
                value: 'Int',
                groupValue: radioValue,
                onChanged: radioButtonChanges,
              ),
              Text(
                "Int",
                style: (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ]),
            Row(
              children: <Widget>[
                Radio(
                  value: 'Double',
                  groupValue: radioValue,
                  onChanged: radioButtonChanges,
                ),
                Text(
                  "Double",
                  style: (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                // width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("C", 1, Colors.orangeAccent),
                      buildButton("Del", 1, Colors.orangeAccent),
                      buildButton("÷", 1, Colors.orangeAccent),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.black54),
                      buildButton("8", 1, Colors.black54),
                      buildButton("9", 1, Colors.black54),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.black54),
                      buildButton("5", 1, Colors.black54),
                      buildButton("6", 1, Colors.black54),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.black54),
                      buildButton("2", 1, Colors.black54),
                      buildButton("3", 1, Colors.black54),
                    ]),
                    TableRow(children: [
                      buildButton(".", 1, Colors.black54),
                      buildButton("0", 1, Colors.black54),
                      buildButton("00", 1, Colors.black54),
                    ]),
                  ],
                ),
              ),
              Container(
                width: 110,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("×", 1, Colors.orangeAccent),
                    ]),
                    TableRow(children: [
                      buildButton("-", 1, Colors.orangeAccent),
                    ]),
                    TableRow(children: [
                      buildButton("+", 1, Colors.orangeAccent),
                    ]),
                    TableRow(children: [
                      buildButton("=", 2, Colors.orangeAccent),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
