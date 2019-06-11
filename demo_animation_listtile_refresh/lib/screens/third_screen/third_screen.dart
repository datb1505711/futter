import 'package:flutter/material.dart';
import 'package:list_title/models/api_file.dart';
import 'package:list_title/screens/third_screen/widgets/tab4.dart';
import 'package:list_title/screens/third_screen/widgets/tab4_wrong.dart';
import 'dart:async';
import 'dart:math';
import '../../models/initialize_i18n.dart' show initializeI18n;
import 'package:list_title/screens/third_screen/widgets/tab1.dart';
import 'package:list_title/screens/third_screen/widgets/tab2.dart';
import 'package:list_title/screens/third_screen/widgets/tab3.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _MyThirdScreen createState() => new _MyThirdScreen();
}
// void main() async {
//   Map<String, Map<String, String>> localizedValues = await initializeI18n();
  
// }

class _MyThirdScreen extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MaterialApp',
      home: DefaultTabController(
        length: 4,
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
                new Tab(
                  text: 'Changelanguages',
                  icon: Icon(Icons.language),)
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
              // Tab4(),
              Tab4(),
            ],
          ),
        ),
      ),
    );
  }
}
