import 'package:blend_hand_game/controllers/game_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridBox extends StatelessWidget {
  const GridBox({
    Key key,
    this.click,
    this.run,
  }) : super(key: key);

  final int run;
  final Function click;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<GameLogicController>();
    return InkWell(
      onTap: () {
        controller.matchStart(run);
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          run.toString(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
