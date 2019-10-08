import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatMessageOnScreen extends StatelessWidget {
  final String text;
  final String name;
  final String date;
  final Icon icon;
  final bool fromLocalDevice;

  ChatMessageOnScreen(
      {this.name, this.text, this.date, this.icon, this.fromLocalDevice});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        fromLocalDevice ? Container() : new IconWindow(icon: icon),
        fromLocalDevice ? Container() : new Padding(padding: EdgeInsets.all(2.0)),
        new Column(
          children: <Widget>[
            new MessageWindow(
              text: text,
            ),
            new Padding(padding: EdgeInsets.all(1.0)),
            new Timestamp(
              name: name,
              date: date,
              textAlign: fromLocalDevice ? TextAlign.left : TextAlign.right,
            ),
            new Padding(padding: EdgeInsets.all(3.0)),
          ],
        ),
        fromLocalDevice ? new Padding(padding: EdgeInsets.all(2.0)) : Container(),
        fromLocalDevice ? new IconWindow(icon: icon) : Container(),
      ],
    );
  }
}

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
      width: MediaQuery.of(context).size.width * 0.81,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
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

class Timestamp extends StatelessWidget {
  final String name;
  final String date;
  final TextAlign textAlign;

  Timestamp({this.name, this.date, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: new RichText(
          textAlign: textAlign,
          text: new TextSpan(
            children: <TextSpan>[
              new TextSpan(
                text:
                    "Napisał(a) " + this.name.toUpperCase() + " o " + this.date,
                style: new TextStyle(
                    color: Colors.grey, fontFamily: 'Oxygen', fontSize: 10),
              ),
            ],
          ),
        ));
  }
}
