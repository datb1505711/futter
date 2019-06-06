import 'package:flutter/material.dart';
import 'package:list_title/actions/custom_popup_menu.dart';
import 'package:list_title/main.dart';
import 'package:list_title/models/constants.dart';
import 'package:list_title/screens/homepage.dart';
import 'package:list_title/screens/widgets/navigation_bar.dart' as prefix0;
import 'package:list_title/screens/second_screen.dart';
import 'package:list_title/screens/widgets/navigation_bar.dart';
import '../screens/widgets/navigatior.dart';

class FirstScreen extends StatelessWidget {
  List<CustomPopupMenu> choices = <CustomPopupMenu>[
    CustomPopupMenu(title: 'Home', icon: Icons.home),
    CustomPopupMenu(title: 'Bookmarks', icon: Icons.bookmark),
    CustomPopupMenu(title: 'Settings', icon: Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        actions: <Widget>[
          PopupMenuButton<CustomPopupMenu>(
            elevation: 3.2,
            initialValue: choices[1],
            onCanceled: () {
              print('You have not chossed anything');
            },
            tooltip: 'This is tooltip',
            itemBuilder: (BuildContext context) {
              return choices.map((CustomPopupMenu choice) {
                return PopupMenuItem<CustomPopupMenu>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            RaisedButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Đi tiếp luôn ae qua đây xem Navigationbar nè :)',
                style: TextStyle(fontSize: 32.0, color: Colors.white),
              ),
              onPressed: () {
                // push to second sreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                      fullscreenDialog: false),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            RaisedButton(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                "Phía trước không có gì cả, về homepage đi :)",
                style: TextStyle(fontSize: 32.0),
              ),
              onPressed: () {
                //push back to main screen.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
            ),
            prefix0.BoxImage(),
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}
