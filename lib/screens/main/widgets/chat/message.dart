import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconWindow extends StatelessWidget {
  final Icon icon;

  IconWindow({this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 36,
        width: 36,
        child: icon,
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(18))));
  }
}

class MessageWindow extends StatelessWidget {
  final String text;

  MessageWindow({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width * 0.8,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new RichText(
              textAlign: TextAlign.left,
              text: new TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: this.text,
                    style: new TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontSize: 12),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class MessageWithMetadata extends StatelessWidget {
  final String text;
  final String name;
  final String date;

  MessageWithMetadata({this.name, this.text, this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new IconWindow(
          icon: new Icon(
            Icons.favorite,
            color: Colors.red,
            size: 22.0,
          ),
        ),
        new Padding(padding: EdgeInsets.all(2.0)),
        new Column(
          children: <Widget>[
            new MessageWindow(
              text: "Ala ma kota\nzlosliwa\nwielo\nlinijkowa wiadomosc",
            ),
            new Padding(padding: EdgeInsets.all(1.0)),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: new Container(
                child: new RichText(
                  textAlign: TextAlign.right,
                  text: new TextSpan(
                    children: <TextSpan>[
                      new TextSpan(
                        text: "Napisał(a) " +
                            this.name.toUpperCase() +
                            " o " +
                            this.date,
                        style: new TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Oxygen',
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.all(3.0)),
          ],
        ),
      ],
    );
  }
}
