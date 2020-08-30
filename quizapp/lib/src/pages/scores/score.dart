import 'package:flutter/material.dart';
import '../game/game.dart';
import '../../theme/color/light_color.dart';
import '../recomended_page.dart';
import '../home/home_page.dart';


class ScorePage extends StatefulWidget {
  static const routeName = './ScorePage';
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {

  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), title: Text(""));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: LightColor.purple,
          unselectedItemColor: Colors.grey.shade300,
          type: BottomNavigationBarType.fixed,
          currentIndex: 3,
          items: [
            _bottomIcons(Icons.home),
            _bottomIcons(Icons.star_border),
            _bottomIcons(Icons.book),
            _bottomIcons(Icons.person),
          ],
          onTap: (index) {
           if(index == 0){
              Navigator.of(context).pushReplacementNamed(HomePage.routeName);
            }
            if(index == 1){
              Navigator.of(context).pushReplacementNamed(RecomendedPage.routeName);
            }
            if(index == 2){
              Navigator.of(context).pushReplacementNamed(GamePage.routeName);
            }
            if(index == 3){
              Navigator.of(context).pushReplacementNamed(ScorePage.routeName);
            }
          },
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text('this is the score page')
            ],
          ),
        )));
  }
}