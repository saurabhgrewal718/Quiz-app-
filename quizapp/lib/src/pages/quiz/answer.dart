import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';


class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedButton(
          child: Text(
                answerText,
                style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                ),
           ),
          onPressed: selectHandler,
          ),
      );
  }
}



