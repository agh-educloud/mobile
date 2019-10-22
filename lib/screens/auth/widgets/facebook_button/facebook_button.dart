import 'package:flutter/material.dart';
import 'package:mobile/widgets/long_button.dart';
import 'package:toast/toast.dart';

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new LongButton(
        icon: new Icon(
          Icons.message,
          color: Colors.black,
          size: 16.0,
        ),
        buttonName: "Zaloguj się Facebookiem",
        onPressed: () {
          Toast.show("Logowanie Facebookiem dostępne niebawem", context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);

          debugPrint("Facebook");
        });
  }
}
