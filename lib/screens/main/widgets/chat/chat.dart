import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/chat/chat.dart';
import 'package:mobile/screens/quiz/quiz.dart';
import 'package:mobile/widgets/round_button.dart';

class ChatButton extends StatelessWidget {
  final VoidCallback toggleToChat;

  ChatButton({this.toggleToChat});

  @override
  Widget build(BuildContext context) {
    return new RoundButton(
      icon: new Icon(
        Icons.message,
        color: Color(0xff27ae60),
        size: 28.0,
      ),
      buttonName: "CZAT",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Chat()),
        );
      },
    );
  }
}
