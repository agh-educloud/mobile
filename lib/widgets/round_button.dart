import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;
  final Icon icon;

  //passing props in react style
  RoundButton({this.buttonName, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        height: 70,
        width: 140,
        child: new FlatButton(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              icon,
              new Padding(padding: EdgeInsets.all(4.0)),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: buttonName,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Oxygen',
                          fontSize: 12),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          onPressed: onPressed,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(12.0)),
          color: Color(0xffC4C4C4).withOpacity(0.19),
          splashColor: Colors.white70,
        ));
  }
}
