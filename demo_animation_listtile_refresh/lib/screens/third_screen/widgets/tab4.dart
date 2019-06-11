import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:list_title/models/initialize_i18n.dart';

import 'package:list_title/models/localizations.dart';

class Tab4 extends StatelessWidget {
  // void initValue() async {
  //   Map<String, Map<String, String>> localizedValues = await initializeI18n();
  // }

  dynamic a =  initializeI18n();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      localizationsDelegates: [
        MyLocalizationsDelegate(a),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale("vn")],
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          MyLocalizations.of(context).hello,
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}
