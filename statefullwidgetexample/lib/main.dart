import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: FavoriteCity(),
    ));

class FavoriteCity extends StatefulWidget {
  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String Cityname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(260.0),
          child: AppBar(
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                Image.network(
                  'https://en.rusunion.com/img/news/2019/01/28/petersburg-remains-the-favorite-city-of-tourists-in-russia-blog.png',
                  fit: BoxFit.contain,
                  width: 200,
                  height: 520,
                ),
                
                 Text(
                    'Your Favorite City!!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ) 
                
              ],
            ),
            elevation: 0.0,
            backgroundColor: Colors.white,
            brightness: Brightness.light,
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(30),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    onSubmitted: (String UserInput) {
                      setState(() {
                        Cityname = UserInput;
                      });
                    },
                  ),
                  Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'Your Best City is:$Cityname',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.blue),
                      ))
                ]))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
