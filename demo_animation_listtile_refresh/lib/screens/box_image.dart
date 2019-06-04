import 'package:flutter/material.dart';

class BoxImage extends StatefulWidget {
  @override 
  _MyBoxImage createState() => new _MyBoxImage();
}

class _MyBoxImage extends State<BoxImage> {
  var _image;
  @override 
  Widget build(BuildContext context) {
    return Container(
              width: 200.0,
              height: 200.0,
              child: Image(image: _image,),
            );
  }
  
}