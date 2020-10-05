import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/home/home_page.dart';

class SignOne extends StatefulWidget {
  static const routeName="/signone";
  @override
  _SignOneState createState() => _SignOneState();
}

class _SignOneState extends State<SignOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            child:Text("this is the sceond page")
          ),
          FlatButton(
            child: Text("GO to home"),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
          )
        ],
      )
    );
  }
}