import 'package:flutter/material.dart';

class StoreAnswer extends StatelessWidget{

  VoidCallback tapped;
  String answerText;
  StoreAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answerText,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.red,
      ),),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
    );
  }
}