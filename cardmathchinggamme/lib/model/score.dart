import 'package:flutter/material.dart';

class Score extends ChangeNotifier {
  int score = 0;
  add() {
    score = score + 10;
    print(score);
    notifyListeners();
  }
  reStart(){
    score=0;
    notifyListeners();
  }
}
