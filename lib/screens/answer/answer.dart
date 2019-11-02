import 'package:flutter/material.dart';
import 'package:mobile/screens/auth/widgets/facebook_button/facebook_button.dart';
import 'package:mobile/screens/auth/widgets/google_button/google_button.dart';
import 'package:mobile/screens/auth/widgets/logo/logo.dart';
import 'package:mobile/screens/chat/chat.dart';
import 'package:mobile/screens/main/main.dart';
import 'package:mobile/globals.dart' as globals;

const CORRECT = 0xff27ae60;
const INCORRECT = 0xffc0392b;


class Answer extends StatefulWidget {
  @override
  State createState() => new AnswerState();
}

class AnswerState extends State<Answer> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Main()),
          (Route<dynamic> route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(
                  globals.wasAnswerCorrect ? Icons.check : Icons.clear,
                  color: Colors.white,
                  size: 120.0,
                ),
              ],
            )),
            // Add box decoration
            decoration: BoxDecoration(
              color: Color(globals.wasAnswerCorrect ? CORRECT : INCORRECT),
            )));
  }
}
