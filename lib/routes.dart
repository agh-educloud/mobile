import 'package:flutter/material.dart';
import 'package:mobile/screens/auth/auth.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Auth': (BuildContext context) => new Auth()
  };

  Routes () {
    runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chmura',
      routes: routes,
      home: new Auth(),
    ));
  }
}