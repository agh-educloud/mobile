import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/join/join.dart';
import 'package:mobile/widgets/round_button.dart';

class JoinButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RoundButton(
      icon: new Icon(
        Icons.screen_share,
        color: Color(0xffF1C40F),
        size: 24.0,
      ),
      buttonName: "DOŁĄCZ",
      onPressed: () {
        debugPrint("Dołącz");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Join()),
        );
      },
    );
  }
}
