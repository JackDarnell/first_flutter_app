//holds question widget
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //final says this value will never change after constructor, locked in during runtime

  Question(this.questionText); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //takes up all available space
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
