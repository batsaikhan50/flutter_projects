import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  var nextDiceRoll = 1;
  var thirdDiceRoll = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
      nextDiceRoll = Random().nextInt(6) + 1;
      thirdDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 130,
              ),
              Image.asset(
                'assets/images/dice-$nextDiceRoll.png',
                width: 130,
              ),
              Image.asset(
                'assets/images/dice-$thirdDiceRoll.png',
                width: 130,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
