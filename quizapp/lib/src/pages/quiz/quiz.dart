import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/widgets/head_of_app.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  static const routeName= '/quiz';
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    int totalquestions = questions.length;
    double difference = 100/totalquestions;
    double initialWidth = 0;


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Headofapp(title: "Quiz App",subtitle: "This is my subtitle",),
        // Container(
        //   width: initialWidth + difference,
        //   height: 10,
        //   color: Colors.greenAccent,

        // ),
        Container(
          height: MediaQuery.of(context).size.height *0.25,
          color: Colors.white,
          child: Question(
            questions[questionIndex]['questionText'],
          ),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Answer(() => answerQuestion(answer['score']), answer['text']));
        }).toList()
      ],
    );
  }
}
