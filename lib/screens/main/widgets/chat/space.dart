import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/main/widgets/chat/message.dart';

class ChatSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 600.0,
        width: MediaQuery.of(context).size.width * 0.95,
        color: Colors.transparent,
        child: new Container(
            decoration: new BoxDecoration(
                color: Color(0xffC4C4C4).withOpacity(0.19),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Column(
                children: <Widget>[
                  new MessageWithMetadata(
                      text: "Ala ma kota\nzlosliwa\nwielo\nlinijkowa wiadomosc",
                      name: "Czerwony Kapturek",
                      date: "19:00"),
                  new MessageWithMetadata(
                      text: "Pozdrawiam cieplutko",
                      name: "Wilk",
                      date: "21:37"),
                  new TextField(
//                    controller: _textController,
//                    onSubmitted: _handleSubmitted,
                  style: new TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Oxygen',
                      fontSize: 10),
                    decoration: new InputDecoration.collapsed(
                        hintText: "Napisz wiadomość"),
                  )
                ],
              ),
            )));
  }
}
