import 'package:cardmathchinggamme/model/data.dart';
import 'package:cardmathchinggamme/model/score.dart';
import 'package:cardmathchinggamme/provider/cardprovider.dart';
import 'package:cardmathchinggamme/utils/constant.dart';
import 'package:cardmathchinggamme/utils/text.dart';
import 'package:cardmathchinggamme/widget/customshapeborder.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Score score = Score();
CardModel cardmodel = CardModel();

class _HomeState extends State<Home> {
 @override
  void initState()
  {
    cardmodel.flip=false;
    score.score=0;
    cardmodel.selectedIndex=-1;
    cardmodel.flipontouch=[true, true, true, true ,true, true, true, true ];
  
    
    cardmodel.cardKey=[GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>()
    ];
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, 
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        shape: CustomShapeBorder(),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          )
        ],
        title: appbartext,
      ),
      body: FlipCardWidget(),
      
    );
  }
  Widget FlipCardWidget()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 100,
          child:Column(
           children: <Widget>[ 
         Consumer<Score>(builder: (context, score, child){
       return Text('Your Points- ${score.score}, Need to score: ${40-(score.score)}',
                          style: textStyle);
         }),
                      Text("Let's Start",
                          style:textStyle),
                      SizedBox(height: 20),

    ],
    ),
    ),
    Center(
           child:GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 4
              ),
              itemCount: 8,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index)
              {
                print(index);
                return  FlipCard(
                  key: cardmodel.cardKey[index],
                  flipOnTouch: cardmodel.flipontouch[index],
                  onFlip:()
                  {
                     flipped(context,index);
                     back();
                  },
                  back:  Container(
                    decoration: BoxDecoration(
                     image: cardmodel.cardID[index],
                    )
                  ),
                   front: front(),
                   //back:back(),
                   );
                   },
          ),
        ),
      ]
    );
  }
  Widget front()
  {
    return Container(
       decoration: BoxDecoration(
         image: cardmodel.cardID[10],
         )
);
  }
    Widget back()
  {
    return Container(
       decoration: BoxDecoration(
         image: cardmodel.cardID[9],
         )
);
  }
}

