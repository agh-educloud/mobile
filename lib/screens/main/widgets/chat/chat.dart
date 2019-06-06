import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/widgets/round_button.dart';

class ChatButton extends StatelessWidget {
  final VoidCallback toggleToChat;

  ChatButton({this.toggleToChat});

  @override
  Widget build(BuildContext context) {
    return new RoundButton(
      icon: new Icon(
        Icons.message,
        color: Color(0xffE67E22),
        size: 24.0,
      ),
      buttonName: "CZAT",
      onPressed: () {
        debugPrint("Czat");
        this.toggleToChat();
      },
    );
  }
}
