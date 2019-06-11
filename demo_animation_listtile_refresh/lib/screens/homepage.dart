import 'dart:async';
import 'package:flutter/material.dart';
import 'package:list_title/screens/first_screen/first_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  String horseUrl = 'https://i.stack.imgur.com/Dw6f7.png';
  String cowUrl = 'https://i.stack.imgur.com/XPOr3.png';
  String camelUrl = 'https://i.stack.imgur.com/YN0m7.png';
  String sheepUrl = 'https://i.stack.imgur.com/wKzo8.png';
  String goatUrl = 'https://i.stack.imgur.com/Qt4JP.png';
  bool _valueA = false;
  bool _value = false;
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        shrinkWrap: false,
        children: <Widget>[
          Card(
            child: ListTile(
              isThreeLine: false,
              dense: false,
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(horseUrl),
              ),
              title: Text("Horse"),
              subtitle: Text("This is horse"),
              trailing: Icon(
                Icons.more_vert,
              ),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: false,
              dense: false,
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(cowUrl),
              ),
              title: Text("Cow"),
              subtitle: Text("This is Cow"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: false,
              dense: false,
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(camelUrl),
              ),
              title: Text("Camel"),
              subtitle: Text("This is Camel"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: false,
              dense: false,
              onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(sheepUrl),
              ),
              title: Text("Sheep"),
              subtitle: Text("This is Sheep"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              isThreeLine: false,
              dense: false,
              selected: _selected,
              onTap: _select,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(goatUrl),
              ),
              title: Text("Goat"),
              subtitle: Text("This is Goat"),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: AnimatedOpacity(
              opacity: _valueA ? 1.0 : 0.3,
              duration: Duration(milliseconds: 500),
              child: CheckboxListTile(
                value: _value,
                title: Text("Checkbox!"),
                subtitle: Text("This is subCheckbox"),
                onChanged: _changeValue,
              ),
            ),
          ),
          Card(
            child: Row(
              children: <Widget>[
                Text("Tap button to fade or show button"),
                AnimatedOpacity(
                  opacity: _valueA ? 1.0 : 0.3,
                  duration: Duration(milliseconds: 500),
                  child: FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        _valueA = !_valueA;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              children: <Widget>[
                Text("Tap button to go firstScreen"),
                RaisedButton(
                  child: Row(
                    children: <Widget>[
                      Text("Đi thôi ae ơi"),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                  onPressed: () {
                    // push to second sreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      onRefresh: _onRefresh,
    );
  }

  void _changeValue(bool value) {
    setState(() {
      _value = !_value;
      _valueA = !_valueA;
    });
  }

  void _select() {
    setState(() {
      _selected = !_selected;
    });
  }

  Future<Null> _onRefresh() async {
    Completer<Null> completer = Completer<Null>();
    Timer timer = Timer(Duration(seconds: 3), () {
      completer.complete();
      print("kkk");
    });
    return completer.future;
  }
}
