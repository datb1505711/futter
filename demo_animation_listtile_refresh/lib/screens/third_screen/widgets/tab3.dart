import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FireBaseDemo extends StatefulWidget {
  @override
  _MyFireBaseDemo createState() => new _MyFireBaseDemo();
}

class _MyFireBaseDemo extends State<FireBaseDemo> {
  final FirebaseMessaging firebaseMessaging = new FirebaseMessaging();
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference().child('baby');
  String textValue = 'Hello baby';


  void _sendDataToFirebase() {
    databaseReference.child("-Lgb6FxIkW3_Pis3cH5I").set({
      'name': 'taDhnahT',
      'age': '4',
      'sex': 'female',
      'token': 'token',
    });
  }

  @override
  void initState() {
    firebaseMessaging.configure(onLaunch: (Map<String, dynamic> msg) {
      print(" onLaunch called!");
    }, onMessage: (Map<String, dynamic> msg) {
      print(" onMessage called!");
    }, onResume: (Map<String, dynamic> msg) {
      print(" onResume called!");
    });

    firebaseMessaging.getToken().then((token) {
      update(token);
    });
  }
    update(String token) {
      print(token);
      textValue = token;
      setState(() {});
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          new Text('aaa')
          ,
          new Center(
              child: new RaisedButton(
            onPressed: _sendDataToFirebase,
            child: Text("Click"),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(textValue),
      ),
    );
  }
}
