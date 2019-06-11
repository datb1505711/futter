import 'package:flutter/material.dart';
import 'package:list_title/models/constants.dart';
import 'package:list_title/screens/second_screen/second_screen.dart';

class bottomBar extends StatefulWidget {
  @override
  myBottomBar createState() => new myBottomBar();
}

  var _image = Constant.picture_0;

class myBottomBar extends State<bottomBar> {

  int _bottomNavigationBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pinkAccent,
      onTap: (int index) {
        setState(() {
          _bottomNavigationBarIndex = index;
          _image = Constant.picture_1;
        });
      },
      currentIndex: _bottomNavigationBarIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
          ),
          title: Text("Notification"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text("Settings"),
        ),
      ],
    );
  }
}

class BoxImage extends StatefulWidget {
  @override
  _MyBoxImage createState() => new _MyBoxImage();
}

class _MyBoxImage extends State<BoxImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Image(
        image: AssetImage(_image),
      ),
    );
  }
}
