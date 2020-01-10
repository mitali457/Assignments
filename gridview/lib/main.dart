import 'package:flutter/material.dart';

void main() {
  runApp(gridview());
}

class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Grid View'),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Image.network("https://robohash.org/$index"),
              //child: Image.network('https://www.inspectionsupport.net/wp-content/uploads/2014/07/LoginRed.jpg$index'),
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
