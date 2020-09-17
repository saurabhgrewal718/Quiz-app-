import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/quiz/quiz.dart';
import 'package:quizapp/src/pages/quiz/startquiz.dart';
import './src/pages/recomended_page.dart';
import './src/pages/scores/score.dart';

import './src/pages/home/home_page.dart';
import './src/theme/theme.dart';
import './src/pages/game/game.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName : (ctx) => HomePage(),
        GamePage.routeName : (ctx) => GamePage(),
        RecomendedPage.routeName : (ctx) => RecomendedPage(),
        ScorePage.routeName : (ctx) => ScorePage(),
        Startquiz.routeName : (ctx) => Startquiz(),
        Quiz.routeName : (ctx) => Quiz(),
      },
    );
  }
}
