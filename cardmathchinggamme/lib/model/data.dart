import 'package:cardmathchinggamme/utils/image.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CardModel extends ChangeNotifier {
  bool _flip;
  int  _selectedIndex;
  List<bool> _flipOnTouch;
  List <GlobalKey<FlipCardState>> _cardKey;
  Map <int,DecorationImage>cardID= {
   
    0:DecorationImage(image: AssetImage(card1)),
    1:DecorationImage(image: AssetImage(card2)),
    2:DecorationImage(image: AssetImage(card3)),
    3:DecorationImage(image: AssetImage(card4)),
    4:DecorationImage(image: AssetImage(card1)),
    5:DecorationImage(image: AssetImage(card2)),
    6:DecorationImage(image: AssetImage(card3)),
    7:DecorationImage(image: AssetImage(card4)),
    8:DecorationImage(image: AssetImage(correct)),
    10:DecorationImage(image: AssetImage(questionMark)),
};
set flip(bool flip){
  this._flip=flip;
}
bool get flip =>_flip;
set selectedIndex(int selectedIndex){
  this._selectedIndex=selectedIndex;
}
int get selectedIndex=> _selectedIndex;
set flipontouch(List<bool> flipontouch)
  {
    this._flipOnTouch=flipontouch;

  } 
 List<bool> get flipontouch=> _flipOnTouch;

set cardKey(List<GlobalKey<FlipCardState>> cardKey)
  {
    this._cardKey=cardKey;

  } 
  List<GlobalKey<FlipCardState>> get cardKey=> _cardKey;



  notifyListeners();
}
