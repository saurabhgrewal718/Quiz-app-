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
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.red,
                child:Text("this is a container")
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.grey,
                child:Text("this is a container")
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
                color: Colors.red[100],
                child:Text("this is a container") 
              ),
              Container(
                 width: double.infinity,
                height: MediaQuery.of(context).size.height*0.25,
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
                      
                  },
                  color: Colors.greenAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Start Quiz", style: TextStyle(
                    fontWeight: FontWeight.w600, 
                    fontSize: 18
                  ),),
                ),
                )
            ],
          ),
      ),
    );
  }
}





