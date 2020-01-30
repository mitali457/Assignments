import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Input1 = "0";
  String Input2 = "0";
  String texttodisplay = "";
  String result = '0';
  String operation = '';
  bool showResult = false;
  String _radioValue;
  btnNew(String btntext) {
    if (btntext == 'CLEAR') {
      result = "";
      setState(() {
        texttodisplay = "";
        Input1 = "0";
        Input2 = "0";
        operation = "";
        showResult = false;
      });
      return;
    }
    if (btntext == "+" || btntext == "-" || btntext == "x" || btntext == "/") {
      if (_radioValue == 'Int') {
        Input1 = int.parse(result).toString();
      } else {
        Input2 = double.parse(result).toString();
      }
      operation = btntext;
      Input2 = "0";
      Input1 = result;
      print(Input1);
      print(result);

      setState(() {
        texttodisplay = texttodisplay + btntext;
      });
      return;
    } else if (btntext == ".") {
      if (result.contains(".")) {
        texttodisplay = texttodisplay + btntext;

        print("Already conatains a decimals");
        return;
      } else {
        result = result + btntext;
      }
    }

    if (Input1 == "0" || operation == "") {
      Input1 = ((int.parse(Input1) * 10) + int.parse(btntext)).toString();
      result = Input1;
      setState(() {
        texttodisplay = texttodisplay + btntext;
      });
      return;
    }
    // else{
    //   Input2 = ((double.parse(Input1) ~/10) + double.parse(btntext)).toString();

    // }

    if (btntext == "=") {
      setState(() {
        showResult = true;
        Input1 = result;
      });
    } else {
      if (_radioValue == 'Int') {
        Input2 = ((int.parse(Input2) * 10) + int.parse(btntext)).toString();
        //print("object $Input2");

        if (operation == "+") {
          result = (int.parse(Input1) + int.parse(Input2)).toString();
        }
        if (operation == "-") {
          result = (int.parse(Input1) - int.parse(Input2)).toString();
        }
        if (operation == "x") {
          result = (int.parse(Input1) * int.parse(Input2)).toString();
        }
        if (operation == "/") {
          result = (int.parse(Input1) ~/ int.parse(Input2)).toString();
        }

        setState(() {
          texttodisplay =
              btntext != "=" ? texttodisplay + btntext : texttodisplay;
        });
      } else {
        Input2 =
            ((double.parse(Input2) / 10) + double.parse(btntext)).toString();
        if (operation == "+") {
          result = (double.parse(Input1) + double.parse(Input2)).toString();
        }
        if (operation == "-") {
          result = (double.parse(Input1) - double.parse(Input2)).toString();
        }
        if (operation == "x") {
          result = (double.parse(Input1) * double.parse(Input2)).toString();
        }
        if (operation == "/") {
          result = (double.parse(Input1) ~/ double.parse(Input2)).toString();
        }
        setState(() {
          texttodisplay =
              btntext != "=" ? texttodisplay + btntext : texttodisplay;
        });
      }
    }
  }

  Widget Custombutton(String btnval) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25),
        onPressed: () {
          btnNew(btnval);
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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          new Container(
            height: 30,
            width: 800,
            margin: EdgeInsets.only(),
            color: Colors.blue[40],
            child: new Text(
              texttodisplay,
              style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Container(
                  height: 70,
                  width: 800,
                  alignment: Alignment.center,
                  color: Colors.blue[40],
                  child: showResult
                      ? new Text(
                          "$result ",
                          style: (TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                        )
                      : null,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Radio(
                          value: 'Int',
                          groupValue: _radioValue,
                          onChanged: radioButtonChanges,
                        ),
                        Text(
                          "Int",
                          style: (TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
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
                            style: (TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
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
                    Custombutton("."),
                    // _radioValue == "Double" ? Custombutton(".") : SizedBox(),
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
        ]),
      ),
    );
  }
}
