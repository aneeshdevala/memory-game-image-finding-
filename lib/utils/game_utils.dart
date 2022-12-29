import 'package:flutter/material.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<String>? gameImg;

  final String hiddenCardpath = "assets/images/hidden.png";
  List<String> cardsList = [
    "assets/images/golden-retriever-puppy.jpg",
    "assets/images/adult-elephant-with-ivory-cartoon-style_1308-53397.webp",
    "assets/images/triangle.png",
    "assets/images/cute-cat-holding-fish-cartoon-icon-illustration-animal-food-icon-concept-isolated-flat-cartoon-style_138676-2171.webp",
    "assets/images/heart.png",
    "assets/images/adult-elephant-with-ivory-cartoon-style_1308-53397.webp",
    "assets/images/star.png",
    "assets/images/triangle.png",
    "assets/images/golden-retriever-puppy.jpg",
    "assets/images/star.png",
    "assets/images/heart.png",
    "assets/images/cute-cat-holding-fish-cartoon-icon-illustration-animal-food-icon-concept-isolated-flat-cartoon-style_138676-2171.webp",
  ];
  final int cardCount = 12;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
