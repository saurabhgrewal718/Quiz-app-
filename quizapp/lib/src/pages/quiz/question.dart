import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/widgets/head_of_app.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Headofapp(title: "Quiz App",subtitle: "This is my subtitle",),
          Text(
              questionText,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
        ],
      )
    );
  }
}
