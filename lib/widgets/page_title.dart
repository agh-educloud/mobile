import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageTitle extends StatelessWidget {
  final String text;

  PageTitle({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: Alignment(-0.9, -0.6),
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: text + "\n",
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
