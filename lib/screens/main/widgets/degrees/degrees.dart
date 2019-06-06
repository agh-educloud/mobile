import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_text/gradient_text.dart';

class DegreeMeanValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width * 0.95,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
            color: Color(0xffC4C4C4).withOpacity(0.19),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: new RichText(
                  textAlign: TextAlign.left,
                  text: new TextSpan(
                    children: <TextSpan>[
                      new TextSpan(
                        text: 'ŚREDNIA OCEN Z ZADAŃ\nDOMOWYCH',
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oxygen',
                            fontSize: 13),
                      ),
                    ],
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 30),
                child: new GradientText("4.4",
                    gradient: LinearGradient(
                        colors: [new Color(0xfff0c27b), new Color(0xff4b1248)]),
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oxygen',
                        fontSize: 60),
                    textAlign: TextAlign.right)),
          ],
        ),
      ),
    );
  }
}

class QuizMeanValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width * 0.95,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
            color: Color(0xffC4C4C4).withOpacity(0.19),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: new RichText(
                  textAlign: TextAlign.left,
                  text: new TextSpan(
                    children: <TextSpan>[
                      new TextSpan(
                        text: 'LICZBA PUNKTÓW\nUZYSKANYCH\nW QUIZACH',
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oxygen',
                            fontSize: 13),
                      ),
                    ],
                  )),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 30),
                child: new GradientText("1997",
                    gradient: LinearGradient(
                        colors: [new Color(0xff556270), new Color(0xffff6b6b)]),
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oxygen',
                        fontSize: 60),
                    textAlign: TextAlign.right)),
          ],
        ),
      ),
    );
  }
}
