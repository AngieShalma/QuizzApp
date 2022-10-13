import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/questions.dart';

import 'answer.dart';

class homeScreenquizz extends StatefulWidget {
  homeScreenquizz({
    Key? key,
  }) : super(key: key);

  @override
  State<homeScreenquizz> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreenquizz> {

  int index = 0;
  restart(){
    index=0;
    setState(() {
    });
  }
  score1() {
    index++;
    if (index < 6) {

    }

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Questions(index),
          SizedBox(
            height: 20,
          ),
          Answer(
            score: () {
              score1();
              print(index);
            },
            index: index,restart: restart,
          ),
          // score1-->run \score1()-->run now only one
        ],
      ),
    );
  }
}
