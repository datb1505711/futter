import 'package:flutter/material.dart';

void main() { runApp(new MaterialApp(
  home: new MyStatelessWidget()
)); 
}
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Flutter Trainning"),
      ),
      body: Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("I like you!", style: new TextStyle(fontSize: 20.0)),
              icon: Icon(Icons.favorite, size: 40.0, color: Colors.redAccent,),     
            ),
            new MyCard(
              title: new Text("I like everything!", style: new TextStyle(fontSize: 20.0)),
              icon: Icon(Icons.donut_large, size: 40.0, color: Colors.brown,),     
            ),
            new MyCard(
              title: new Text("You can\'t see me!", style: new TextStyle(fontSize: 20.0)),
              icon: Icon(Icons.visibility_off, size: 40.0, color: Colors.blue,),     
            ),
            new MyCard(
              title: new Text("I can see you!", style: new TextStyle(fontSize: 20.0)),
              icon: Icon(Icons.visibility, size: 40.0, color: Colors.pinkAccent,),     
            ),
          ],
        )
      ),      );
  }
}

class MyCard extends StatelessWidget {
  
  MyCard({this.title,this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(children: <Widget>[
            this.title,
            this.icon,
          ],)
        )
      )
    );
  }
}