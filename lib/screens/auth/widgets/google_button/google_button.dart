import 'package:flutter/material.dart';
import 'package:mobile/widgets/app_button.dart';

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new AppButton(
      icon: new Icon(
        Icons.cloud,
        color: Colors.black,
        size: 16.0,
      ),
      buttonName: "Zaloguj się kontem Google",
      onPressed: () {
        debugPrint("Google");
      },
    );
  }
}
