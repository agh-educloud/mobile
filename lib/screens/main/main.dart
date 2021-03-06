import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/feedback/feedback.dart' as fb;
import 'package:mobile/screens/main/widgets/chat/chat.dart';
import 'package:mobile/screens/main/widgets/degrees/degree.dart';
import 'package:mobile/screens/main/widgets/homework/space.dart';
import 'package:mobile/screens/main/widgets/join/join.dart';
import 'package:mobile/services/chat/chat.dart';
import 'package:mobile/widgets/page_title.dart';
import 'package:mobile/globals.dart' as globals;

String getName() {
  if (globals.mainClass == "EMPTY") return "Strona główna";
  return "Strona główna (" + globals.mainClass + ")";
}

class Main extends StatelessWidget {
  Main() {
    void insert(message) {
        globals.messages.insert(0, message);
        globals.registeredSetState();
    }
    Client().receiveMessages(insert);
  }

  @override
  Widget build(BuildContext context) {
    globals.context = context;
    return Scaffold(
        body: new SingleChildScrollView(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
          new Padding(padding: EdgeInsets.all(20.0)),
          new PageTitle(
            text: getName(),
          ),
          new DegreeMeanValueWindow(
            degree: 4.1,
            description: "ŚREDNIA OCEN Z ZADAŃ\nDOMOWYCH",
            color: new Color(0xff6ab04c),
          ),
          new Padding(padding: EdgeInsets.all(5.0)),
          new DegreeMeanValueWindow(
            degree: 238.4,
            description: "LICZBA PUNKTÓW\nUZYSKANYCH\nW QUIZACH",
            color: new Color(0xff27ae60),
          ),
          new Padding(padding: EdgeInsets.all(5.0)),
          new Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new JoinButton(),
                new ChatButton(),
              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(5.0)),
          new Homework(),
          new Padding(padding: EdgeInsets.all(5.0)),
          new FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => fb.Feedback()),
              );
            },
            textColor: Colors.blueGrey,
            color: Colors.white,
            child: const Text(
                '                         OCEŃ PROWADZĄCEGO                         '),
          ),
        ]))));
  }
}
