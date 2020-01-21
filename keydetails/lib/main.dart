

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(new MaterialApp(home: PositionedTiles()));

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
  // Stateful tiles now wrapped in padding (a stateless widget) to increase height 
  // of widget tree and show why keys are needed at the Padding level.
  List<Widget> tiles = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulColorfulTile(key: UniqueKey()),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulColorfulTile(key: UniqueKey()),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: tiles),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatefulColorfulTile extends StatefulWidget {
  StatefulColorfulTile({Key key}) : super(key: key);
 
  @override
  ColorfulTileState createState() => ColorfulTileState();
}

class ColorfulTileState extends State<ColorfulTile> {
  Color myColor;

  @override
  void initState() {
    super.initState();
    myColor = UniqueColorGenerator.getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor,
        child: Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}
