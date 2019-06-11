import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:list_title/screens/first_screen/first_screen.dart';
import 'models/initialize_i18n.dart' show initializeI18n;
import 'package:list_title/screens/homepage.dart';
import 'package:list_title/screens/widgets/navigatior.dart';
import 'package:list_title/screens/third_screen/widgets/tabview.dart';

import 'models/localizations.dart';

void main() async {
  // Map<String, Map<String, String>> localizedValues = await initializeI18n();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Map<String, Map<String, String>> localizedValues;
  // MyApp(this.localizedValues);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // localizationsDelegates: [
      //   MyLocalizationsDelegate(localizedValues),
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate
      // ],
      // supportedLocales: [Locale("en"), Locale("es"), Locale("pt")],
      // onGenerateTitle: (BuildContext context) =>
      //     MyLocalizations.of(context).title,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Trainning"),
        ),
        body: HomePage(),
      ),
    );
  }
}
