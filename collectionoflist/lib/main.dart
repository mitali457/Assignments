import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            flexibleSpace:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              /*Text("List Puzzel!!", style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),*/
              Image.network(
                'https://png.pngtree.com/element_our/png/20180902/titl;creative-vector-puzzle-background-png_72324.jpg',
                fit: BoxFit.contain,
                width: 400,
                height: 240,
              ),
            ]),
            elevation: 0.0,
            backgroundColor: Colors.white,
            brightness: Brightness.light,
          ),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //GridView.count(
          // crossAxisCount: 2,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 180,
              height: 600,
              color: Colors.orange[300],
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: 180,
                        height: 200,
                        color: Colors.green[200],
                        child: Center(
                          child: Text(
                            'SMILY',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: 180,
                        height: 200,
                        color: Colors.orange[200],
                        child: Center(
                          child: Text(
                            'ANGRY',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: 180,
                        height: 200,
                        color: Colors.green[200],
                        child: Center(
                          child: Text(
                            'SAD',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 180,
              height: 600,
              color: Colors.grey[100],
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 180,
                        height: 200,
                        color: Colors.green[200],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage( 'http://www.pngmart.com/files/1/Sad-Emoji-PNG-Clipart.png'),
                              
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 180,
                        height: 200,
                        color: Colors.orange[200],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('http://pngimg.com/uploads/smiley/smiley_PNG144.png'),
                              
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 180,
                        height: 200,
                        color: Colors.green[200],
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5Bi8a418aM2MzocXb8JPwnRhSePYM8jsxiHIPU-9LXtgfxLSl&s'),
                             
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
