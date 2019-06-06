import 'package:flutter/material.dart';
import 'package:list_title/models/api_file.dart';
import 'dart:math';

import 'package:list_title/screens/widgets/tab1.dart';
import 'package:list_title/screens/widgets/tab2.dart';
import 'package:list_title/screens/widgets/tab3.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _MyThirdScreen createState() => new _MyThirdScreen();
}

class _MyThirdScreen extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MaterialApp',
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: AppBar(
            title: new Text('The 3th screen'),
            bottom: TabBar(
              tabs: <Widget>[
                new Tab(
                  icon: Icon(Icons.home),
                  text: 'demo Pop-up',
                ),
                new Tab(
                  text: 'APIs File',
                  icon: Icon(Icons.notifications_active),
                ),
                new Tab(
                  icon: Icon(Icons.settings),
                  text: 'Firebase',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Tab1(),
              Tab2(
                storage: Storage(),
              ),
              FireBaseDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Tab3 {
}
