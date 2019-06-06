import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _MyTab1 createState() => new _MyTab1();
}

class _MyTab1 extends State<Tab1> {
  TextEditingController _controller = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new TextField(
            controller: _controller,
            obscureText: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Enter your name: ',
              labelText: 'Your name',
            ),
          ),
          new TextField(
            controller: _controller2,
            obscureText: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter your age: ',
              labelText: 'Your age',
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: Center(
              child: new RaisedButton(
                color: Colors.lightBlue,
                onPressed: _showDialog,
                child: Center(
                  child: new Row(
                    children: <Widget>[
                      new Text(
                        'Submit ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Transform(
                          transform: Matrix4.rotationZ(1.5),
                          child: new Icon(
                            Icons.all_inclusive,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          
          title: Text('Hê Lô '),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Chào Bé Lê Zăn ${_controller.text} ${_controller2.text} tuổi'),
                Text('You\’re like me. '),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
