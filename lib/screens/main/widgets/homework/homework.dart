import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/widgets/round_button.dart';

class HomeworkButton extends StatelessWidget {
  final VoidCallback toggleToHomework;

  HomeworkButton({this.toggleToHomework});

  @override
  Widget build(BuildContext context) {
    return new RoundButton(
      icon: new Icon(
        Icons.border_color,
        color: Color(0xff019875),
        size: 24.0,
      ),
      buttonName: "ZADANIA",
      onPressed: () {
        debugPrint("Homework");
        toggleToHomework();
      },
    );
  }
}
