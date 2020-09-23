import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    print(questionText.length);
    double textsize = questionText.length > 83 ? 28 : 36;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          
          Text(
              questionText,
              style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
        ],
      )
    );
  }
}
