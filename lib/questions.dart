import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Questions extends StatefulWidget {
  final index;

  Questions ( this.index);

  @override
  State<Questions> createState() => _QuestionsState();
}
List _questions=[
  'What\'s best club in Egypt',
  'What\'s best club in World',
  'Who is the best player in Africa',
  'Who is the best player in World',
  'Who is the best GoalKeaper in Africa',
  'Who is the best GoalKeaper in World',
];

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return widget.index<_questions.length? Container(
      width: double.infinity,
      child:
      Padding(
        padding: const EdgeInsets.only(top:100,bottom: 50),
        child: Text(_questions[widget.index]
          ,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),
          textAlign: TextAlign.center,
        ),
      ),


    ):Container();
  }
}
