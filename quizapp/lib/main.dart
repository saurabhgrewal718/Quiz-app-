import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/auth/anonmous.dart';
import 'package:quizapp/src/pages/auth/loginScreen.dart';
import 'package:quizapp/src/pages/auth/signOne.dart';
import './src/pages/auth/signup/signup_screen.dart';
import 'package:quizapp/src/pages/auth/welcome.dart';
import './src/pages/quiz/my_quiz_app.dart';
import 'package:quizapp/src/pages/quiz/quiz.dart';
import 'package:quizapp/src/pages/quiz/startquiz.dart';
import './src/pages/recomended_page.dart';
import './src/pages/profile/score.dart';
import 'package:firebase_core/firebase_core.dart';

import './src/pages/home/home_page.dart';
import './src/theme/theme.dart';
import './src/pages/game/game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyAppone());
}

class MyAppone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: MyApp(),
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

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child:
          StreamBuilder(
            stream: FirebaseAuth.instance.onAuthStateChanged,
            builder: (ctx,usersnapshot){
              CircularProgressIndicator();
              if(usersnapshot.hasData){
                return HomePage();
              }
              return Welcome();
            },
          ),
           
    );
  }
}
