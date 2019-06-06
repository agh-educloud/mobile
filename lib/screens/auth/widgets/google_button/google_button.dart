import 'package:flutter/material.dart';
import 'package:mobile/screens/main/main.dart';
import 'package:mobile/services/chat/chat.dart';
import 'package:mobile/widgets/long_button.dart';

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new LongButton(
      icon: new Icon(
        Icons.cloud,
        color: Colors.black,
        size: 16.0,
      ),
      buttonName: "Zaloguj się kontem Google",
      onPressed: () {
        debugPrint("Google");

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Main()),
        );
        Future<void> main() async {
          try {
            await Client("XDD").simulateChat();
          } catch (e) {
            print('Caught error: $e');
          }
        }

        main();
      },
    );
  }
}
