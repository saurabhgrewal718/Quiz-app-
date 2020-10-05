import 'package:flutter/material.dart';

class SignOne extends StatefulWidget {
  static const routeName="/signone";
  @override
  _SignOneState createState() => _SignOneState();
}

class _SignOneState extends State<SignOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Text("this is the sceond page")
      )
    );
  }
}