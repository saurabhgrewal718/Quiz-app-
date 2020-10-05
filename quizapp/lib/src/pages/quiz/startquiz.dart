import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/src/pages/quiz/my_quiz_app.dart';
import 'package:quizapp/src/pages/quiz/quiz.dart';

class Startquiz extends StatefulWidget {
  static const routeName = "/startquiz";
  @override
  _StartquizState createState() => _StartquizState();
}

class _StartquizState extends State<Startquiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.15,
                
                child:Text("this is a container")
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                
                child:Text("this is a container")
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                
                child:Text("this is a container") 
              ),
              AnimatedButton(
                child: Text(
                  'Start Quiz',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                height: 80,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(MyQuizApp.routeName); 
                },
                width: 300,
                color: Colors.redAccent,
                shadowDegree: ShadowDegree.dark,
                enabled: true,
              ), 

              SizedBox(height: 20,),

            ],
          ),
      )
      ),
    );
  }
}
