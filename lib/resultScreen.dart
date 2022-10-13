import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'answer.dart';
import '../main.dart';

class resultScreenquizz extends StatelessWidget {
  int scoree;
  final restart;
  resultScreenquizz({ required this.scoree,required this.restart});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Text(
          'quizz score:${scoree}',
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow),
          child: MaterialButton(
            onPressed: () {
              scoree=0;
              restart();
            },
            child: Text(
              'register',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

