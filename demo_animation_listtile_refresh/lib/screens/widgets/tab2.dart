import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:list_title/models/api_file.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
class Tab2 extends StatefulWidget {
  final Storage storage;

  Tab2({Key key, @required this.storage}) : super(key: key);

  @override
  _MyTab2 createState() => new _MyTab2();
}

class _MyTab2 extends State<Tab2> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  Future<Directory> _appDocDir;
  String state ;
  String fileName;

  @override 
  void initState() {
    super.initState();
    widget.storage.readData().then((String value) {
      setState(() {
        state = value;
      });
    });
    widget.storage.getFileName().then((String name) {
      setState(() {
        fileName = name;
      });
    });
  }

  Future<File> writeData() async {
    setState(() { 
      state = _controller1.text;
      _controller1.text='';
      fileName = _controller2.text;
    });
    return widget.storage.writeData(state, fileName);
  }
  Future<File> rename() async {
    setState(() {
      fileName = _controller2.text;
    });
    return widget.storage.rename(fileName);
  }
  void getAppDirectory() {
    setState((){
      _appDocDir = getApplicationDocumentsDirectory();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: new Padding(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text( 
              'Work on ${fileName}',
              textAlign: TextAlign.center,
            ),
            new Text( 
              'data file is: ${state ?? "File is Empty"}',
              textAlign: TextAlign.center,
            ),
            new TextField(
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'Enter file name',
              ),
            ),
            new TextField(
             controller: _controller1,
              decoration: InputDecoration(
                labelText: 'write some data',
              ),
            ),
            new RaisedButton(
              onPressed: writeData,
              child: new Text("Write to File"),
            ),
            new RaisedButton(
              onPressed: getAppDirectory,
              child: Text('Get Dir Path'),
            ),
             new RaisedButton(
              onPressed: rename,
              child: new Text("rename file"),
            ),
            FutureBuilder<Directory>(
              future: _appDocDir,
              builder: (BuildContext context, AsyncSnapshot<Directory> snapshot) {
                Text text = new Text('');
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    text = new Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    text = Text('Path: ${snapshot.data.path}');
                  } else {
                    text = Text('Unavailabel');
                  }
                }
                return new Container( child: text,);
              },
            )
          ],
        ),
      ),
    );
  }
}
