import 'package:flutter/material.dart';
import 'package:ui_chalange/components/circlepainter.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[700],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://previews.123rf.com/images/bshome/bshome1806/bshome180600010/103845879-snowy-mountains-view-from-manali-.jpg'),
            fit: BoxFit.cover,
          )),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black,
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 80,
                  width: 350,
                  color: Colors.red[700],
                  child: Row(
                    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Container(
                                             padding: EdgeInsets.all(7),

                           child: Text(
                            'MONDAY\nOCTOBER 27',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                         ),
                        
                        // Padding(padding: EdgeInsets.only(left: 100)),
                        Container(
                          height: 150,
                          width: 100,
                            color: Colors.red[900],
                            child: IconButton(
                              
                              highlightColor: Colors.red,
                              icon: Icon(
                                Icons.keyboard_voice,
                                color: Colors.white,
                                size:37
                              ),
                              onPressed: () {},
                            ))
                      ]),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.topRight,
                        children: <Widget>[
                          Icon(Icons.email, color: Colors.white, size: 60),
                          CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.red[700],
                              child: Text(
                                '610',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )),

                          // Text('610',
                          // style: TextStyle(
                          //               fontSize: 18,
                          //               color: Colors.red,
                          //             ),
                          // ),
                        ],
                      ),
                      Icon(Icons.add_a_photo, color: Colors.white, size: 60),
                      Icon(Icons.access_time, color: Colors.white, size: 60),
                      Icon(Icons.landscape, color: Colors.white, size: 60),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 80,
                          width: 180,
                          color: Colors.red[700],
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                width: 8,
                              ),
                                    Row(
                                      children: <Widget>[
                                    Icon(
                                      Icons.add_alert,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'ALARM ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                      ]),
                                  ]
                                  ),
                              SizedBox(
                                height: 15,
                               
                              ),
                              Row(
                                
                                 children: <Widget>[
                                   SizedBox(
                                width: 8,
                              ),
                                   Text(' NOT SET',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ))
                                   
                            ])
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 80,
                          width: 180,
                          color: Colors.red[700],
                          child: Column(children: <Widget>[
                             Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                width: 8,
                              ),
                            Row(
                               
                                children: <Widget>[
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'CALENDER',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                                  ]),
                            SizedBox(
                              height: 15,
                            ),

                            Row( 
                             
                              children: <Widget>[
                                SizedBox(
                                width: 8,)
,                                
                            Text(' DINNER PARTY',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                                )
                            ]
                            ),
                          ]
                          )
                          ),
                    ]
                    ),
                Stack(
                  alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                          height: 400,
                               alignment: Alignment.bottomCenter,
                   
                       child:   Container(
                         child: CustomPaint( painter: CirclePainter(),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text('59°F',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                          SizedBox(),
                                  Text('74°F',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FlatButton(
                                  padding: EdgeInsets.all(16),
                                  color: Colors.grey.withOpacity(0.3),
                                  onPressed: () {},
                                  child: Row(
                                    children: <Widget>[
                                      Text('UNREAD \n SMS 0',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(Icons.message,
                                          color: Colors.white, size: 30),
                                    ],
                                  ),
                                ),
                                FlatButton(
                                  padding: EdgeInsets.all(16),
                                  color: Colors.grey.withOpacity(0.3),
                                  onPressed: () {},
                                  child: Row(
                                    children: <Widget>[
                                      Text('MISSED \n CALLS 0',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(Icons.call,
                                          color: Colors.white, size: 30),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(children: <Widget>[
                              SizedBox(
                                        width: 10,
                                      ),
                              Text('COUNTTING STARS',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            ],),
                            
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.play_circle_filled,
                                      color: Colors.white, size: 30),
                                  Text(
                                      'ONEREPUNLIC \n NATIVE (DELUXE VERS TEST)',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ])
                          ],
                        ),
                         ),

                        height: 330,
                        width: 370,
                        //color: Colors.black,
                        
                      ),   ),


                      Positioned(
                        bottom: 285,
                        child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child:       Icon(Icons.cloud_circle,
                                      color: Colors.red, size: 50),
                                
                                ),
                      ),
                    
                    ]),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          width: 100,
          child: FloatingActionButton(
              onPressed: () => {},
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              backgroundColor: Colors.red[700],
              shape: RoundedRectangleBorder()),
        )
        
        
        
        
        
        );
  }
}
