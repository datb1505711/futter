import 'package:flutter/material.dart';
import './app/m_stateless_widget.dart';
import './app/bottomwidget.dart';
var imageAsset = new AssetImage('image/avatar.jpg');
var image = new Image(image: imageAsset, width: 50.0, height: 50.0, );
void main() {runApp(new MaterialApp(
  home: new MyApp()
));
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: new Icon(Icons.arrow_back,),
          actions: <Widget>[
            new Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(icon: image,))
          ],
        ),
      body: MyStatelessWidget(),
      bottomNavigationBar: bottomStatelessWidget(),
      )
    );
  }
}