import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/auth/anonmous.dart';
import 'package:quizapp/src/pages/auth/loginScreen.dart';
import 'package:quizapp/src/pages/auth/signOne.dart';
import 'package:quizapp/src/pages/auth/signupscreen.dart';
import 'package:quizapp/src/pages/auth/welcome.dart';
import './src/pages/quiz/my_quiz_app.dart';
import 'package:quizapp/src/pages/quiz/quiz.dart';
import 'package:quizapp/src/pages/quiz/startquiz.dart';
import './src/pages/recomended_page.dart';
import './src/pages/profile/score.dart';

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
      home: Welcome(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName : (ctx) => HomePage(),
        GamePage.routeName : (ctx) => GamePage(),
        RecomendedPage.routeName : (ctx) => RecomendedPage(),
        ScorePage.routeName : (ctx) => ScorePage(),
        Startquiz.routeName : (ctx) => Startquiz(),
        MyQuizApp.routeName : (ctx) => MyQuizApp(),
        Welcome.routeName : (ctx) => Welcome(),
        LoginScreen.routeName : (ctx) => LoginScreen(),
        SignupScreen.routeName : (ctx) => SignupScreen(),
        Anonmous.routeName : (ctx) => Anonmous(),
        SignOne.routeName : (ctx) => SignOne()
      },
    );
  }
}
