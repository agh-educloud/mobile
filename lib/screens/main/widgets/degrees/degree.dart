import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DegreeMeanValueWindow extends StatelessWidget {
  final double degree;
  final String description;
  final Color color;

  DegreeMeanValueWindow({this.degree, this.description, this.color});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width * 0.95,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new DegreeMeanValueText(description: description),
            new DegreeMeanValue(
              degree: degree,
            ),
          ],
        ),
      ),
    );
  }
}

class DegreeMeanValueText extends StatelessWidget {
  final String description;

  DegreeMeanValueText({this.description});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: new RichText(
            textAlign: TextAlign.left,
            text: new TextSpan(
              children: <TextSpan>[
                new TextSpan(
                  text: description,
                  style: new TextStyle(
                      color:  Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Oxygen',
                      fontSize: 13),
                ),
              ],
            )),
      ),
    );
  }
}

class DegreeMeanValue extends StatelessWidget {
  final double degree;

  DegreeMeanValue({this.degree});

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Padding(
      padding: const EdgeInsets.only(right: 30),
      child: new RichText(
          textAlign: TextAlign.right,
          text: new TextSpan(
            text: this.degree.toString(),
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff130f40),
                fontFamily: 'Oxygen',
                fontSize: 60),
          )),
    ));
  }
}
