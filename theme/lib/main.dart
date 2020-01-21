import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  int _selectedPage = 0;
  final _pageOptions = [

    {
      "text":"Hello Flutter ",
      "color": Colors.teal
    },{
       "text":"Welcome ",
      "color": Colors.purple
    },

   {
       "text":"Be Happy  ",
      "color": Colors.indigo
    },
    // Text(
    //   'Hello Flutter ',style:TextStyle(fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.bold,color: Colors.teal)
    //   ),
    // Text(
    //   'Welcome',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.bold,color: Colors.purple)
    //   ),
    // Text(
    //   'Be Happy  ',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.bold,color: Colors.indigo)
    //   )
  ];

    @override
    Widget build(BuildContext context) {
  
      return MaterialApp(
      
  
        theme: ThemeData(
            primaryColor: Colors.teal,
           
        ),
  
        home: Scaffold(
          backgroundColor: Colors.grey[400],
  
          appBar: AppBar(
            title:Text("Theme Change"),
            backgroundColor: _pageOptions[_selectedPage]["color"],
           // backgroundColor: Colors.teal,
          ),
  
          body: Center(
            child: Text(
      _pageOptions[_selectedPage]["text"],style:TextStyle(fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.bold,color:_pageOptions[_selectedPage]["color"])
      ),),
          // _pageOptions[_selectedPage]),
  
          bottomNavigationBar: BottomNavigationBar(
  
              //fixedColor: Colors.blueAccent,
              type: BottomNavigationBarType.shifting,
  
              currentIndex: _selectedPage,
              onTap: (int index){
                setState(() {
                  _selectedPage= index;
                });
              },
              items: [
                BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: _pageOptions[_selectedPage]["color"]
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text("Messages"),
              backgroundColor: _pageOptions[_selectedPage]["color"]
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              backgroundColor:_pageOptions[_selectedPage]["color"]
            )
              ]
          ),
        ),
      );
    }
  
}