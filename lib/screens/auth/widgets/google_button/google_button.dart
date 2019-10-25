import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobile/screens/main/main.dart';
import 'package:mobile/widgets/long_button.dart';
import 'package:mobile/globals.dart' as globals;

GoogleSignIn _googleSignIn = new GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

bool canLogin = false;

doLogin() async {
  await _googleSignIn.signIn();
}

doLogout() async {
  await _googleSignIn.signOut();
  return 'signOutWithGoogle succeeded....';
}

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
//        doLogout();
        doLogin();
        _googleSignIn.onCurrentUserChanged
            .listen((GoogleSignInAccount account) async {
          if (account != null) {
            // user logged
            debugPrint(account.displayName);
            globals.user = account.displayName;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Main()),
            );
          } else {
            // user NOT logged
            debugPrint("YYYY");
          }
        });
      },
    );
  }
}
