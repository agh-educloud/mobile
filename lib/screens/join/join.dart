import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';
import 'package:mobile/generated/status.pb.dart';
import 'package:mobile/screens/main/main.dart';
import 'package:mobile/services/class/class.dart';
import 'package:toast/toast.dart';
import 'package:mobile/globals.dart' as globals;
import 'package:mobile/services/quiz/quiz.dart' as quiz;

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RichText(
                    textAlign: TextAlign.left,
                    text: new TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: 'WPISZ KOD ABY DOŁĄCZYĆ DO ZAJĘĆ\n',
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Oxygen',
                              fontSize: 14),
                        ),
                      ],
                    )),
                new Padding(padding: EdgeInsets.all(20.0)),
                new VerificationCodeInput(
                  keyboardType: TextInputType.number,
                  textStyle:
                      TextStyle(fontSize: 25.0, color: Color(0xff019875)),
                  length: 5,
                  onCompleted: (String code) {
                    Client().canJoinClass(code).then((value) {
                      if (value.code == Status_Code.OK) {
                        Toast.show("Dołączono do zajęć", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                        globals.mainClass = code;

                        quiz.Client().waitForQuestion();

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Main()),
                        );
                      } else {
                        Toast.show("Niepoprawny kod", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      }
                    });
                  },
                )
              ],
            )),
            // Add box decoration
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff536976), Color(0xff292E49)],
              ),
            )));
  }
}
