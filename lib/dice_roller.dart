import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final Random random = Random();
  String imagePath = 'assets/dice-1.png';

  void rollDice() {
    int randomNumber = random.nextInt(6) + 1;
    setState(() {
      imagePath = 'assets/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue[400],
              textStyle: const TextStyle(fontSize: 22)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
