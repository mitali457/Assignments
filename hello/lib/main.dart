import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make My Trip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Make My Trip'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void message() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Seat Available'),
            actions: <Widget>[
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('You Booked your flight successfully'),
                        );
                      });
                },
                child: Text('Book \t'),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              )
            ],
          );
        });
  }

  bool getairasiaflightdetails = false;
  bool getindigoflightdetails = false;
  bool getspiejetflightdetails = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(widget.title),
        )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.red[50],
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              getairasiaflightdetails = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Airasia',
                                style:
                                    TextStyle(color: Colors.cyan, fontSize: 20),
                              )
                            ],
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              getindigoflightdetails = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Indigo',
                                style:
                                    TextStyle(color: Colors.cyan, fontSize: 20),
                              )
                            ],
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              getspiejetflightdetails = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Spiejet',
                                style:
                                    TextStyle(color: Colors.cyan, fontSize: 20),
                              )
                            ],
                          ),
                        )),

                    getairasiaflightdetails
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 1.4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text('AirAsia',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue,
                                                      ),
                                                    ),),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 10,
                                            ),
                                            width: 60,
                                            height: 20,
                                            child: IconButton(
                                              icon: Icon(Icons.cancel),
                                              color: Colors.blue,
                                              onPressed: () {
                                                setState(() {
                                                  getairasiaflightdetails =
                                                      false;
                                                });
                                              },
                                            ),
                                          )
                                          
                                        ],
                                      )
                                    ],
                                  )
                                  
                                  )
                            ],
                          )
                        : SizedBox(),
                    //indigoflightdetails
                    getindigoflightdetails
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 1.4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text('Indigo',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 10,
                                            ),
                                            width: 60,
                                            height: 20,
                                            child: IconButton(
                                              icon: Icon(Icons.cancel),
                                              color: Colors.blue,
                                              onPressed: () {
                                                setState(() {
                                                  getindigoflightdetails =
                                                      false;
                                                });
                                              },
                                            ),
                                          )
                                          
                                        ],
                                      )
                                    ],
                                  )
                                  
                                  )
                            ],
                          )
                        : SizedBox(),
                        //spiejetflightdetails
                        getspiejetflightdetails
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 1.4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text('Spiejet',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 20, bottom: 10, left: 10),
                                            color: Colors.white,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.4,
                                            height: 80,
                                            child: Card(
                                                child: Column(
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10),
                                                      child: Text(
                                                        'Kolkata to Bangalore',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 30),
                                                      child: Text(
                                                        '4 PM - 7 PM',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10, left: 40),
                                                      child: Text(
                                                        '15 seats available',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 10),
                                                      width: 70,
                                                      height: 20,
                                                      child: FlatButton(
                                                        color: Colors.blue,
                                                        textColor: Colors.white,
                                                        onPressed: () {
                                                          message();
                                                        },
                                                        child: Text(
                                                          'Book',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            )),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 10,
                                            ),
                                            width: 60,
                                            height: 20,
                                            child: IconButton(
                                              icon: Icon(Icons.cancel),
                                              color: Colors.blue,
                                              onPressed: () {
                                                setState(() {
                                                  getspiejetflightdetails =
                                                      false;
                                                });
                                              },
                                            ),
                                          )
                                          
                                        ],
                                      )
                                    ],
                                  )
                                  
                                  )
                            ],
                          )
                        : SizedBox(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
