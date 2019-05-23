import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;
  final Icon icon;

  //passing props in react style
  AppButton({this.buttonName, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        width: 250, // specific value
        child: new FlatButton(
          child: new Row(
            children: <Widget>[
              icon,
              new Padding(padding: EdgeInsets.all(4.0)),
              new Text("|",
                  style: TextStyle(color: Colors.grey.withOpacity(0.5))),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: buttonName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Oxygen',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          onPressed: onPressed,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          color: Colors.white,
          splashColor: Colors.white70,
        ));
  }
}
