import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_title/screens/third_screen/third_screen.dart';
import 'package:list_title/screens/second_screen/widgets/flight.dart';
import '../first_screen/first_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'ở đây chỉ chứa drawer Navigation thôi nha :)',
              style: TextStyle(fontSize: 32.0),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first screen when tapped!
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdScreen(),
                  ),
                );
              },
              child: Text(
                'Demo TabBars :)))',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 350.0,
              width: 500.0,
              color: Colors.black,
              child: FlightFlight(),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 32.0),
          // padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: <Widget>[
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //   ),
            //   child: Text('Drawer Header'),
            // ),
            ListTile(
              title: Text('image1'),
              onTap: () {
                //close the NavigationDrawer
                Navigator.pop(context);
              },
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.stack.imgur.com/Dw6f7.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
