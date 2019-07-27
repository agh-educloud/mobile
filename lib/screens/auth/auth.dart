import 'package:flutter/material.dart';
import 'package:mobile/screens/auth/widgets/facebook_button/facebook_button.dart';
import 'package:mobile/screens/auth/widgets/google_button/google_button.dart';
import 'package:mobile/screens/auth/widgets/logo/logo.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Logo(),
                new LogoText(),
                new Padding(padding: EdgeInsets.all(180.0)),
                new FacebookButton(),
                new GoogleButton()
              ],
            )),
            // Add box decoration
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff536976), Color(0xff292E49)],
              ),
            )));
  }
}

