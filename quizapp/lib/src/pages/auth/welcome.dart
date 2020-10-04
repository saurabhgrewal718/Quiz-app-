import 'package:flutter/material.dart';
import 'package:quizapp/src/pages/auth/anonmous.dart';
import '../../../Animation/FadeAnimation.dart';
import './loginScreen.dart';
import './signupscreen.dart';


class Welcome extends StatelessWidget {
  static const routeName = './welcomepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(1, Text("Bixabay", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.2, Text("Stay Connected with your people and that way do amazing things that needs to be changed after sometime!", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15
                  ),)),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child : Image.asset('assets/images/mque.png')
                
              ),
              Column(
                children: <Widget>[
                  FadeAnimation(1.5, MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginScreen.routeName,);
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Login", style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      fontSize: 18
                    ),),
                  )),
                  SizedBox(height: 20,),
                  FadeAnimation(1.6, Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
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
                      height: 60,
                      onPressed: () {
                        Navigator.of(context).pushNamed(SignupScreen.routeName,);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                      },
                      color: Colors.yellow,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Sign up", style: TextStyle(
                        fontWeight: FontWeight.w600, 
                        fontSize: 18
                      ),),
                    ),
                  )),
                  SizedBox(height:20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Anonmous.routeName,);
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Skip This!", style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      fontSize: 18
                    ),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}