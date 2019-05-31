import 'package:flutter/material.dart';
import './bottomwidget.dart';

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(16.0),
          child: new Text("Sales", style: new TextStyle(fontSize: 30.0,),),
        ),
        new Row(
          children: <Widget>[
            new Container( padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
             child: new Text("Day", style: TextStyle(fontSize: 20.0),)),          
            new Container( padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
             child: new Text("Week", style: TextStyle(fontSize: 20.0),)),
            new Container( padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
             child: new Text("Month", style: TextStyle(fontSize: 20.0),)),
            new Container( padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
             child: new Text("Year", style: TextStyle(fontSize: 20.0),)),
            new Container( padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
               decoration: BoxDecoration(
                 color: Colors.deepOrange[200],
                 borderRadius: BorderRadius.all(
                 Radius.circular(10.0),)    
               ),
              //color: Colors.deepOrangeAccent,
             child: new Text("All time", style: TextStyle(fontSize: 20.0, color: Colors.white),)),
          ],
        ),
        new Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0)
            )
          ),
          child: image)
        ), 
      ]
    );
  }
  
}
