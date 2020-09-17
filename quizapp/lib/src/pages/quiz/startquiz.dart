import 'package:flutter/material.dart';

class Startquiz extends StatefulWidget {
  static const routeName = "./startquiz";
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
                colors: [Colors.greenAccent, 
                Colors.blue[200]])),
          child: Column(
            children: [
              Container(

              ),
              Container(
                
              )
            ],
          ),
      ),
    );
  }
}

