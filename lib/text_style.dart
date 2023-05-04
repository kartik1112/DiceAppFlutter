import 'package:flutter/material.dart';

class StyleText extends StatelessWidget{
  const StyleText(this.text1, {super.key});

  final String text1;

  @override
  Widget build(context){
    return Text(
      text1,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
    );
  }
}