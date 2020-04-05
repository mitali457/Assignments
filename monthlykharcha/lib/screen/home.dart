import 'package:flutter/material.dart';
import 'package:monthlykharcha/Animation/animation.dart';
import 'package:monthlykharcha/components/curvedshape.dart';
import 'package:monthlykharcha/model/productmodel.dart';

import 'package:monthlykharcha/screen/details.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: <Color>[
              //Colors.grey.withOpacity(0.5),
              Colors.transparent,
              Colors.white,
            ])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.orange[300],
                ),
                clipper: CurvedShape(),
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 270,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.lerp(
                                Radius.circular(2), Radius.circular(25), 32),
                            bottomRight: Radius.lerp(
                                Radius.circular(3), Radius.circular(38), 37))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        SlideFadeTransition(
                          child: Text('Mahina Ka Kharcha',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Total Bills Due',
                            style: TextStyle(
                              color: Colors.red[700],
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )),
                        
                        SlideFadeTransition(
                            delayStart: Duration(milliseconds: 800),
                            child: Text('9240.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                    child: SlideFadeTransition(
                      child: Icon(Icons.credit_card,
                          color: Colors.white, size: 23),
                    ),
                  )
                ],
              ),
            ],
          ),
          //SizedBox(height: 10),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: Column(
                    children: <Widget>[
                      Container(
                        height: 140,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    data[index].imgUrl),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(width: 20),
                                      Text(data[index].productname,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                  SizedBox(height: 20
                                  ),
                                  Text(data[index].lastdate,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                              //SizedBox(width: 65),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FlatButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(40.0),
                                      ),
                                      color: Colors.grey[300],
                                      onPressed: () {},
                                      child: Text('Pay Now')),
                                  SizedBox(height: 35),
                                  Text(data[index].price.toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ));
                }),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 120, bottom: 5),
            width: 300,
            height: 60,
            child: FlatButton(
                color: Colors.red[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details()),
                  );
                },
                child: Text('clear Bill',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))),
          )
        ]),
      ),
    );
  }
}
