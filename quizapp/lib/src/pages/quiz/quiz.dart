import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  static const routeName = "/quiz";
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("THis is title"),
          ),
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
              // Container(
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.height*0.25,
                
              //   child:Text("this is a container") 
              // ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height:MediaQuery.of(context).size.height *0.2,
                          child: Text("hey"),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height:MediaQuery.of(context).size.height *0.2,
                          child: Text("Man"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height:MediaQuery.of(context).size.height *0.2,
                          child: Text("whats"),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          height:MediaQuery.of(context).size.height *0.2,
                          child: Text("up"),
                        )
                      ],
                    )
                  ],
                ),
              )
              
              
            ],
          ),
      ),
    );
  }

}