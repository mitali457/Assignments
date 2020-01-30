import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      // theme:  ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  int nInt1;
   int nInt2;
   double numDouble1;
   double numDouble2;
  
  String texttodisplay = "";
  String result = '';
  String operation = '';
  String _radioValue; 
  
   btnclikced(String btntext) {
     if (btntext == 'CLEAR') {
       texttodisplay = "";
       result = "";
       nInt1 = 0;
       nInt2 = 0;
       numDouble1 = 0.0;
       numDouble2 = 0.0;
     } else if (btntext == "+" ||
         btntext == "-" ||
         btntext == "x" ||
         btntext == "/") {
       if (_radioValue == 'Int') 
       {
         nInt1 = int.parse(result);
       } else 
       {
         numDouble1 = double.parse(result);
       }
       result = "";
       operation = btntext;
     } else if (btntext == ".") {
       if (result.contains(".")) {
         print("Already conatains a decimals");
         return;
      } else {
       result = result + btntext;
     }
    } else if (btntext == "=") {
     if (_radioValue == 'Int') {
        nInt2 = int.parse(result);
         if (operation == "+") {
          result = (nInt1 + nInt2).toString();
         }
         if (operation == "-") {
          result = (nInt1 - nInt2).toString();
       }
         if (operation == "x") {
        result = (nInt1 * nInt2).toString();
      }
      if (operation == "/") {
          result = (nInt1 ~/ nInt2).toString();
       }
       nInt1 = 0;
       nInt2 = 0;
      operation = "";
    }
      else {
      numDouble2 = double.parse(result);
       if (operation == "+") {
        result = (numDouble1 + numDouble2).toString();
       }
       if (operation == "-") {
        result = (numDouble1 - numDouble2).toString();
      }
        if (operation == "x") {
          result = (numDouble1 * numDouble2).toString();
      }
      if (operation == "/") {
         result = (numDouble1 ~/ numDouble2).toString();
        }
       numDouble1 = 0;
       numDouble2 = 0;
       operation = "";
     }
   } else {
       if (_radioValue == 'Int') {
         result = result + btntext;
      } else
       result = result + btntext;
   }

    setState(() {
      texttodisplay = result;
    });
   }

  Widget Custombutton(String btnval) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25),
        onPressed: () {
          btnclikced(btnval);
        },
        child: Text(
          "$btnval",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }

  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(270.0),
        child: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://www.thecalculatorsite.com/images/header/logo.png',
                fit: BoxFit.contain,
                width: 400,
                height: 590,
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
      ),
       body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Container(
              height: 30,
              width: 200,
              padding: EdgeInsets.symmetric(),
              alignment: Alignment.center,
              margin: EdgeInsets.only(),
              color: Colors.blue[40],
              child: new Text(
                "$operation ",
                style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Container(
              height: 70,
              width: 200,
              padding: EdgeInsets.symmetric(),
              alignment: Alignment.center,
              margin: EdgeInsets.only(),
              color: Colors.blue[40],
              child: new Text(
                "$result ",
                style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
                Widget>[
              Row(children: <Widget>[
                Radio(
                  value: 'Int',
                  groupValue: _radioValue,
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
                    groupValue: _radioValue,
                    onChanged: radioButtonChanges,
                  ),
                  Text(
                    "Double",
                    style:
                        (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ]),
            Row(
              children: <Widget>[
                Custombutton('9'),
                Custombutton('8'),
                Custombutton('7'),
                Custombutton('+'),
              ],
            ),
            Row(
              children: <Widget>[
                Custombutton("6"),
                Custombutton("5"),
                Custombutton("4"),
                Custombutton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                Custombutton("3"),
                Custombutton("2"),
                Custombutton("1"),
                Custombutton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                //Custombutton("."),
                _radioValue == "Double" ? Custombutton(".") : SizedBox(),
                Custombutton("0"),
                Custombutton("±"),
                Custombutton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                Custombutton("CLEAR"),
                Custombutton("="),
              ],
            )
          ],
        ),
      ),
          ]
        ),
       ),
    );
  }
}
