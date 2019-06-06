import 'package:flutter/material.dart';
import 'package:mobile/services/chat/chat.dart';
import 'package:mobile/widgets/long_button.dart';

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
          debugPrint("Facebook");

          Future<void> main() async {
            try {
              await Client("USER1").simulateChat();
            } catch (e) {
              print('Caught error: $e');
            }
          }

          main();
        });
  }
}
