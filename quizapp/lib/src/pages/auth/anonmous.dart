import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/home/home_page.dart';

class Anonmous extends StatelessWidget {
  static const routeName= './anonmous';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
          children:[
          Text("Anonmous Login!"),
          SizedBox(height: 30,),
          FlatButton(
            child:Text("Continue"),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            },
          )
        ]
      ),
    );
  }
}