import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MainWindowTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: Alignment(-0.9, -0.6),
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Strona głowna\n',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oxygen',
                    fontSize: 26),
              ),
            ],
          ),
        ));
  }
}