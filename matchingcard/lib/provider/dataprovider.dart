import 'package:matchingcard/models/model.dart';

String selectedTile = "";
int selectedIndex;
bool selected = true;
int scores = 0;

List<CardModel> mycardPairs = List<CardModel>();
List<bool> clicked = List<bool>();

List<bool> getClicked() {
  List<bool> youClicked = List<bool>();
  List<CardModel> mypairs = List<CardModel>();
  mypairs = getPairs();
  for (int i = 0; i < mypairs.length; i++) {
    youClicked[i] = false;
  }

  return youClicked;
}

List<CardModel> getPairs() {
  List<CardModel> pairs = List<CardModel>();

  CardModel cardModel = CardModel();

  cardModel.setImageAssetPath("assets/card1.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  cardModel.setImageAssetPath("assets/card2.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  cardModel.setImageAssetPath("assets/card3.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  cardModel.setImageAssetPath("assets/card4.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  return pairs;
}

List<CardModel> getQuestionPairs() {
  List<CardModel> pairs = List<CardModel>();

  CardModel cardModel = CardModel();

  cardModel.setImageAssetPath("assets/question.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  cardModel.setImageAssetPath("assets/question.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  cardModel.setImageAssetPath("assets/question.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  cardModel.setImageAssetPath("assets/question.png");
  cardModel.setIsSelected(false);
  pairs.add(cardModel);
  pairs.add(cardModel);
  cardModel = CardModel();

  return pairs;
}
