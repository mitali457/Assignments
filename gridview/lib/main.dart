import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final title = 'Grid List';

    return MaterialApp(
      //title: title,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Grid View'),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Image.network("https://robohash.org/$index"),
              //child: Text(
                //'Grid $index',
               // style: Theme.of(context).textTheme.headline,
             // ),
            );
          }),
        ),
      ),
    );
  }
}