import 'package:flutter/material.dart';
import 'package:matchingcard/models/model.dart';
import 'package:matchingcard/provider/dataprovider.dart';
import 'package:matchingcard/widget/customshape.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CardModel> gridViewTiles = List<CardModel>();
  List<CardModel> questionPairs = List<CardModel>();
  @override
  void initState() {
    super.initState();
    reStart();
  }

  void reStart() {
    mycardPairs = getPairs();
    mycardPairs.shuffle();

    gridViewTiles = mycardPairs;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        questionPairs = getQuestionPairs();
        gridViewTiles = questionPairs;
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Colors.red[700],
          shape: CustomShapeBorder(),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            )
          ],
          title: Text(
            "Match The Card",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          )
          
          ),
      body: Container(
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            scores != 40
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Your Points- $scores Need to score 40',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("Let's Start",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(height: 20),
                      GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisSpacing: 0.0, maxCrossAxisExtent: 100.0),
                      )
                    ],
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            scores != 40
                ? GridView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 0.0, maxCrossAxisExtent: 100.0),
                    children: List.generate(gridViewTiles.length, (index) {
                      return Tile(
                        imagePathUrl: gridViewTiles[index].getImageAssetPath(),
                        tileIndex: index,
                        parent: this,
                      );
                    }),
                  )
                : Container(
                    child: Column(
                    children: <Widget>[
                      Text("You Won The Game 🥳🥳",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Your Score : $scores/40",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          scores = 0;
                          reStart();
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            "Replay",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ))
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imagePathUrl;
  int tileIndex;
  _MyHomePageState parent;

  Tile({this.imagePathUrl, this.tileIndex, this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            mycardPairs[widget.tileIndex].setIsSelected(true);
          });
          if (selectedTile != "") {
            /// testing if the selected cards are same
            if (selectedTile ==
                mycardPairs[widget.tileIndex].getImageAssetPath()) {
              scores = scores + 10;

              CardModel cardModel = CardModel();
              print(widget.tileIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                cardModel.setImageAssetPath("");
                mycardPairs[widget.tileIndex] = cardModel;
                print(selectedIndex);
                mycardPairs[selectedIndex] = cardModel;

                this.widget.parent.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedTile = "";
              });
            } else {
              print("wrong choice");

              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                this.widget.parent.setState(() {
                  mycardPairs[widget.tileIndex].setIsSelected(false);
                  mycardPairs[selectedIndex].setIsSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedTile = "";
            }
          } else {
            setState(() {
              selectedTile = mycardPairs[widget.tileIndex].getImageAssetPath();
              selectedIndex = widget.tileIndex;
            });
          }
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: mycardPairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(mycardPairs[widget.tileIndex].getIsSelected()
                ? mycardPairs[widget.tileIndex].getImageAssetPath()
                : widget.imagePathUrl)
            : Container(
                color: Colors.white,
                child: Image.asset("assets/correct.png"),
              ),
      ),
    );
  }
}
