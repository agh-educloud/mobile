import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/main/widgets/chat/chat.dart';
import 'package:mobile/screens/main/widgets/chat/space.dart';
import 'package:mobile/screens/main/widgets/degrees/degrees.dart';
import 'package:mobile/screens/main/widgets/homework/homework.dart';
import 'package:mobile/screens/main/widgets/homework/space.dart';
import 'package:mobile/screens/main/widgets/join/join.dart';
import 'package:mobile/screens/main/widgets/title/title.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool isHomework = true;

  void toggleToChat() {
    setState(() { // notify flutter that state changed
      this.isHomework = false;
    });
    debugPrint(this.isHomework.toString());
  }

  void toggleToHomework() {
    setState(() {
      this.isHomework = true;
    });
    debugPrint(this.isHomework.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new SingleChildScrollView(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
          new Padding(padding: EdgeInsets.all(20.0)),
          new MainWindowTitle(),
          new DegreeMeanValue(),
          new Padding(padding: EdgeInsets.all(5.0)),
          new QuizMeanValue(),
          new Padding(padding: EdgeInsets.all(5.0)),
          new Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new HomeworkButton(toggleToHomework: toggleToHomework,),
                new JoinButton(),
                new ChatButton(toggleToChat: toggleToChat,),
              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(5.0)),
          isHomework ? new HomeworkSpace() : new ChatSpace()
        ]))));
  }
}
