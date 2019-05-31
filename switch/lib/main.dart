import 'package:flutter/material.dart';
import './app_screen/column.dart';
void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
      ));
}
class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  var _value1 = false;
  var _value2 = false;

  void _onChanged1(bool value) => setState(() => _value1 = true);
  void _onChanged2(bool value) => setState(() => _value2 = true);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Flutter Trainning'),
      ),
      body: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Center(
          child: Column(
            children: <Widget>[
              new Switch(
                value: _value1,
                onChanged: _onChanged1,
              ),
              new SwitchListTile(
                value: _value2,
                onChanged: _onChanged2,
                title: new Text('this is Switch!', style: TextStyle(fontSize: 30.0),),
              )
            ],
          )
        ),
      )
    );
  }
}