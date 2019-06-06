import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:list_title/screens/first_screen.dart';
import 'package:list_title/screens/homepage.dart';
import 'package:list_title/screens/widgets/navigatior.dart';
import 'package:list_title/screens/tabview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Trainning"),
        ),
        body: HomePage(),
      ),
    );
  }
}
