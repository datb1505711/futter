import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
  

class FireBaseDemo extends StatefulWidget {
  @override
  _MyFireBaseDemo createState() => new _MyFireBaseDemo();
}

class _MyFireBaseDemo extends State<FireBaseDemo> {
  final DatabaseReference databaseReference =
      FirebaseDatabase.instance.reference().child('baby');
  void _sendDataToFirebase() {
    databaseReference.child("-Lgb6FxIkW3_Pis3cH5I").set({
      'name': 'taDhnahT',
      'age': '4',
      'sex': 'female',
      'token': 'token',
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: new RaisedButton(
        onPressed: _sendDataToFirebase,
        child: Text("Click"),
      )),
    );
  }
}
