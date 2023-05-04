import 'package:dice_clone/text_style.dart';
import 'package:flutter/material.dart';
import 'package:dice_clone/roll_dice.dart';

class GradientBox extends StatelessWidget {
  const GradientBox(this.color1, this.color2, {super.key});

  final dynamic color1;
  final dynamic color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color1, color2]),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
