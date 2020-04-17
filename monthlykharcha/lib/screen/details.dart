import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:monthlykharcha/model/productmodel.dart';

import 'package:monthlykharcha/screen/home.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double total=0;
    for (int i=0;i<data.length;i++){
      if(data[i].id!=null)
      total=total+data[i].price;
    }
    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: Column(
          children: <Widget>[
            Stack(
                // padding: EdgeInsets.all(20.0),
                children: <Widget>[
                  ClipPath(
                    clipper: DiagonalPathClipperOne(),
                    child: Container(
                      height: 500,
                      color: Colors.orange[300],
                    ),
                  ),
                  ClipPath(
                    clipper: DiagonalPathClipperTwo(),
                    child: Container(
                      width: 180,
                      height: 500,
                      color: Colors.red[700],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 50, top: 150, bottom: 50),
                    height: 393,
                    width: 400,
                    color: Colors.black,
                  ),
                  ClipPath(
                    clipper: MultipleRoundedCurveClipper(),
                    child: Container(
                      height: 500,
                      margin: EdgeInsets.only(left: 30, right: 60, top: 50),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.topCenter,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 60,
                                child: Image.network(
                                    'https://cdn1.iconfinder.com/data/icons/business-and-finance-97/64/wallet-money-finance-cash-dollar-512.png'),
                              )),
                          SizedBox(height: 20),
                          Text(
                            'Payment is completed for 2bills.',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 184,
                            child: ListView.builder(
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                   if(data[index].id!=null)
                                  return Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1)),
                                    child: ListTile(
                                        title: Container(
                                      height: 60,
                                      width: 100,
                                      child: Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.green[700],
                                            child: Icon(Icons.check,
                                                color: Colors.white, size: 30),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                data[index].productname,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Txn ID:${data[index].id.toString()}",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(data[index].price.toString())
                                        ],
                                      ),
                                    )),
                                  );
                                  else return SizedBox();
                                }),
                          ),
                          
                          SizedBox(
                            height: 20,
                          ),
                          Column(children: <Widget>[
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              total.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ])
                        ],
                      ),
                    ),
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.share, color: Colors.white, size: 30),
                      ),
                      Text('Share'),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.save, color: Colors.white, size: 30),
                      ),
                      Text('Save'),
                    ],
                  ),
                ]),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 330,
              height: 60,
              child: FlatButton(
                  color: Colors.red[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child: Text('Done',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
            )
          ],
        ));
  }
}
