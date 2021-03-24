import 'package:blend_hand_game/componets/grid_box.dart';
import 'package:blend_hand_game/controllers/game_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final gameController = Get.put(GameLogicController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
            child: Text(
          'Its your batting ',
          style: TextStyle(fontSize: 20),
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => GridBox(
              run: index,
            ),
          ),
        ),
        Obx(
          () => Text(
            'Score ${gameController.score}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
              backgroundColor: MaterialStateProperty.all(Colors.orange)),
          onPressed: () {
            gameController.newGame();
          },
          child: Text(
            'Play Again',
            style: TextStyle(fontSize: 25),
          ),
        )
      ],
    );
  }
}
