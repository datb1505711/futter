import 'package:flutter/material.dart';

var assetImage = new AssetImage('image/bieudo.jpg');
var image = new Image(image: assetImage, width:250.0, height: 250.0);

var assetImage2 = new AssetImage('image/avatar.jpg');
var image2 = new Image(image: assetImage2, width:50.0, height: 50.0, );

class bottomStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 200.0,
      padding: EdgeInsets.only(top: 10.0, left: 30.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0)
        )      ),
      child: new ListView( 
        shrinkWrap: true,
        children: <Widget>[
          
          //listView item1
          new Center(
            child: new Container(
            height: 10.0,
            width: 50.0,
            alignment: Alignment.center,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20.0) 
            ),
            child: Center(
              child: Text('..', style: TextStyle(fontSize: 1.0, fontWeight: FontWeight.bold),)
            ),
          ))
          ,

          //listview item2
          new Text('Recent customers', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
          ,

          //listview item3
          new Column(
            children: <Widget>[
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.all(16.0),
                          // decorate border Radius of avatar.
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          child: image2,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: new Container(
                          alignment: Alignment.topLeft,
                          child: new Column(
                            children: <Widget>[
                                new Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: new Text('Erin Stewart', style: TextStyle (fontSize: 15.0, fontWeight: FontWeight.bold),)),
                                new Text('May 7th',textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400,),)
                            ],
                          ),
                        ),
                        ),
                        new Container(
                          alignment: Alignment.center,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              new Text('\$15', textAlign: TextAlign.right, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.greenAccent),),
                              new Text('Earnings \$10.50', textAlign: TextAlign.right, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.orangeAccent),)
                            ],
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),

              //listview item4
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.all(16.0),
                          // decorate border Radius of avatar.
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          child: image2,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: new Container(
                          alignment: Alignment.topLeft,
                          child: new Column(
                            children: <Widget>[
                              new Padding(padding: EdgeInsets.only(left: 20.0),
                                child: new Text('Michelle Dines', style: TextStyle (fontSize: 15.0, fontWeight: FontWeight.bold),)),
                              new Padding(
                                padding: EdgeInsets.only(left: 2.0),  
                                child: new Text('Apr 20th',textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400,),))
                            ],
                          ),
                        ),
                        ),
                        new Container(
                          alignment: Alignment.center,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              new Text('\$15', textAlign: TextAlign.right, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.greenAccent),),
                              new Text('Earnings \$10.50', textAlign: TextAlign.right, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.orangeAccent),)
                            ],
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
              ]
      )
      ]
      ),
      );
}
}