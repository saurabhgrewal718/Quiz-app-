import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';


class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    print(answerText.length);
    double textsize = answerText.length > 25 ? 16 : 22;
    return Container(
      padding: EdgeInsets.all(10),
      child: AnimatedButton(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
                answerText,
                style: TextStyle(
                fontSize: textsize,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                ),
           ),
          onPressed: selectHandler,
          ),
      );
  }
}



