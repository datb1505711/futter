import 'package:flutter/material.dart';

void main() { runApp(new MaterialApp(
      home: TextFieldTest(),
 ));
}

class TextFieldTest extends StatefulWidget {
  @override
  _TextFieldTestState createState() => _TextFieldTestState();
}

class _TextFieldTestState extends State<TextFieldTest> {
  var name = ["Your name: ","Username: ", "Password: "];
  void changed(e){
  setState((){
    val = e;
    message = "You are set to: ${e.toStringAsFixed(1)}" ;
  });
}
  String message = "Slider Scale.";
  double val = 2.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Field Test')),
      body:new Column(children: <Widget>[
      new Column(children: new List.generate(3, (index){
        return new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                  flex: 3,                
                  child: new Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text('${name[index]}', style: TextStyle(fontSize: 20.0),),)
                ),
                new Expanded(
                  flex: 7,
                  child: new TextField(
                    autofocus: (index==0),
                    keyboardType: TextInputType.text,
                  ),
                )
              ],
            ),
          ],
        );
      })),
      new Container(
        child: new ButtonBar(
          alignment: MainAxisAlignment.start,
          children: <Widget>[
            new Slider(
              value: val,
              onChanged: (double e) => changed(e),
              activeColor: Colors.red,
              inactiveColor: Colors.grey,
              divisions: 100,
              label: "My Scale.",
              max: 100,
              min: 1,
            ),
            new Text(message),
          ],
        ),
      ),
      ],),
      bottomSheet: new Container(
        height: 50.0,
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: new RaisedButton(
              onPressed: () {print('clicked!');},
              child: new Text('Press me to do nothing :))))'),
       ) ),
    );

  }
}
