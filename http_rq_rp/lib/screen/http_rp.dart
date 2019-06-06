import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../action/post.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  final fUrl = "http://jsonplaceholder.typicode.com/posts";
  List<dynamic> data;
  @override
  Widget build(BuildContext context) {
    if (data == null) {
      http.get(this.fUrl).then((http.Response response) {
        setState(() {
          data = new List<Post>();
          json.decode(response.body).forEach((json) {
            data.add(Post.fromJson(json));
          });
        });
      });
    }
    return Container(
      child: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          if (data == null) return null;
          return new ListTile(
              title: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      data[index]["title"],
                      style: new TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      data[index]["body"],
                      style: new TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
