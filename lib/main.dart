import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'homeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

double sliderValue = 100;
int sum = 0;
double weight = 60;

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Function? x() {
    setState(() {
      sum += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(color: Colors.white, child: homeScreenquizz()),
      ),
    );
  }
}
