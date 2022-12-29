import 'package:flutter/widgets.dart';
import 'package:flutter_cardgame/utils/game_utils.dart';

class Homecontroller extends ChangeNotifier {
  final Game game = Game();
  var index = 0;

//when click the image the code will checeking
  void clickTheImage() {
    game.gameImg![index] = game.cardsList[index];
    game.matchCheck.add({index: game.cardsList[index]});
    if (game.matchCheck.length == 2) {
      if (game.matchCheck[0].values.first == game.matchCheck[1].values.first) {
        print("true");

        game.matchCheck.clear();
      } else {
        print("false");

        Future.delayed(const Duration(milliseconds: 500), () {
          game.gameImg![game.matchCheck[0].keys.first] = game.hiddenCardpath;
          game.gameImg![game.matchCheck[1].keys.first] = game.hiddenCardpath;
          game.matchCheck.clear();
          notifyListeners();
        });
      }
    }
    notifyListeners();
  }
}
