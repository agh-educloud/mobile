import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeworkSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width * 0.95,
        color: Colors.transparent,
        child: new Container(
            decoration: new BoxDecoration(
                color: Color(0xffdfe4ea).withOpacity(0.19),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: new RichText(
                  textAlign: TextAlign.left,
                  text: new TextSpan(
                    children: <TextSpan>[
                      new TextSpan(
                        text: 'Hura!\n',
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oxygen',
                            fontSize: 64),
                      ),
                      new TextSpan(
                        text: 'Nie masz zadań\ndo oddania. 😍',
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oxygen',
                            fontSize: 18),
                      ),
                    ],
                  )),
            )));
  }
}
