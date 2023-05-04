import 'dart:ffi';

import 'package:dice_clone/gradient_box.dart';
import 'package:flutter/material.dart';
import 'package:dice_clone/text_style.dart';
import 'dart:math';


final dynamic randomizer = Random();

class RollDice extends StatefulWidget{
  const RollDice({super.key});

  @override
  State<RollDice> createState(){
    return _RollDiceState();
  }
}


class _RollDiceState extends State<RollDice>{
  // _RollDice({super.key});
  int currentDiceRoll = 2;
  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 243, 7, 7),
                  Colors.cyanAccent
                ]
              )
            ),
            child: OutlinedButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              onPressed: rollDice,
              child: const StyleText('Roll The Dice'),
            ),
          )

          // StyleText('My Name is Kartik...'),
        ],
      );
  }
}