import 'package:flutter/material.dart';
// import '../home/home_page.dart';
// import '../profile/score.dart';
// import '../../theme/color/light_color.dart';
// import '../recomended_page.dart';

class GamePage extends StatefulWidget {
  static const routeName = './gamepage';
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("this is the game page"),),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text('this is the game page')
            ],
          ),
        )));
  }
}

