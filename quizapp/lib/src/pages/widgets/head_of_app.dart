import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Headofapp extends StatelessWidget {
  final String subtitle;
  final String title;

  Headofapp({
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
          ),
          actions: [
           Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),
                textAlign: TextAlign.center,
              ),
          ],
      ),
    );
  }
}