import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

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
                  textStyle: TextStyle(fontSize: 25.0, color: Color(0xff019875)),
                  length: 5,
                  onCompleted: (String value) {
                    print(value);
                    Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text("Niepoprawny kod"),
                    ));
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
