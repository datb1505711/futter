import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:susan0175/actions/new_actions.dart';
import 'package:susan0175/actions/status.dart';
import 'package:susan0175/reducers/new_reducer.dart';
import './reducers/counter_tap.dart';

void main() {
  runApp(new FlutterReduxApp(
    title: "Flutter Redux App",
  ));
}

class FlutterReduxApp extends StatelessWidget {
  final Store<int> store;
  final String title;

  FlutterReduxApp({Key key, this.store, this.title});

  @override
  Widget build(BuildContext context) {
    final store = new Store<int>(counterReducer, initialState: 0);
    return new StoreProvider<int>(
      store: store,
      child: new MaterialApp(
        title: title,
        home: new Scaffold(
          appBar: AppBar(
            title: new Text(title),
          ),
          body: new Center(
            child: new Column(
              children: <Widget>[
                new StoreConnector<int, String>(
                  converter: (Store store) => store.state.toString(),
                  builder: (context, count) {
                    return new Text(count.toString());
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: new StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(Actions.Increment);
            },
            builder: (context, callback) {
              return new FloatingActionButton(
                onPressed: callback,
                child: Icon(Icons.add),
              );
            },
          ),
        ),
      ),
    );
  }
}
