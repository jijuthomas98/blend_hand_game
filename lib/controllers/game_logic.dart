import 'dart:math';
import 'package:get/get.dart';

class GameLogicController extends GetxController {
  var score = 0.obs;
  Random _random = Random();
  matchStart(int run) {
    if (_random.nextInt(6) == run) {
      out();
    } else {
      addRun(run);
    }
  }

  void out() {
    score.value = 0;

    Get.defaultDialog(
      middleText: 'Game Over',
    );
  }

  void newGame() {
    score.value = 0;
    Get.snackbar('Lets start !!', 'Start New Game',
        snackPosition: SnackPosition.BOTTOM);
  }

  void addRun(int run) {
    score = score + run;
    update();
  }
}
