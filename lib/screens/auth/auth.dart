import 'package:flutter/material.dart';
import 'package:mobile/screens/auth/widgets/facebook_button/facebook_button.dart';
import 'package:mobile/screens/auth/widgets/google_button/google_button.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Center(
                child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.white.withOpacity(0.7),
                        Colors.white.withOpacity(0.0)
                      ],
                    ).createShader(bounds);
                  },
                  child: Icon(
                    Icons.cloud_queue,
                    color: Colors.white,
                    size: 120.0,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'MAŁOPOLSKA\n',
                        style: TextStyle(
                            color: Color(0xff000C40).withOpacity(0.55),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oxygen',
                            fontSize: 38),
                      ),
                      TextSpan(
                        text: 'CHMURA EDUKACYJNA',
                        style: TextStyle(
                            color: Color(0xff000C40).withOpacity(0.55),
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Oxygen',
                            fontSize: 23),
                      )
                    ],
                  ),
                ),
                new Padding(padding: EdgeInsets.all(220.0)),
                new FacebookButton(),
                new GoogleButton()
              ],
            )),
            // Add box decoration
            decoration: BoxDecoration(
              // Box decoration takes a gradient
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff22C1C3), Color(0xffFCC349)],
              ),
            )));
  }
}
