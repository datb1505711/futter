import 'package:flutter/material.dart';
import './screen/http_rp.dart';


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
