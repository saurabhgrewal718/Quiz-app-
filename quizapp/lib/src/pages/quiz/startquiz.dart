import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[200],Colors.greenAccent])),
          child: Column(
            children: [
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
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                
                child:Text("this is a container") 
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                  )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 80,
                  onPressed: () {
                     Navigator.of(context).pushReplacementNamed(Quiz.routeName); 
                  },
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Start Quiz" ,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold)),
                  ),
                ),
                )
              
            ],
          ),
      ),
    );
  }
}





