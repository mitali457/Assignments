class CardModel {
  String imageAssetPath;
  bool isSelected;

  CardModel({this.imageAssetPath, this.isSelected});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
