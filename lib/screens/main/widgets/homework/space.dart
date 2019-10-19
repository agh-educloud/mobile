import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/generated/homework.pb.dart' as grpc;
import 'package:mobile/services/homework/homework.dart';
import 'package:url_launcher/url_launcher.dart';

class Homework extends StatefulWidget {
//  @override
//  State createState() => new HomeworkState();

  @override
  HomeworkState createState() {
    return new HomeworkState();
  }
}

class HomeworkState extends State<Homework> {
  int homeworkLength = 0;
  var allHomework;

  HomeworkState() {
    Client().getHomework().then((value) {
      setState(() {
        debugPrint("TUTAJ");
        homeworkLength = value.homework.length;
        allHomework = value.homework;
      });
    });
  }

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
                child: homeworkLength == 0
                    ? new RichText(
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
                        ))
                    : new AllHomework(
                        allHomework: allHomework,
                      ))));
  }
}

class AllHomework extends StatelessWidget {
  final List<grpc.Homework> allHomework;

  AllHomework({this.allHomework});

  Widget getHomeworkBars() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < allHomework.length; i++) {
      list.add(new HomeworkBar(
          number: i + 1,
          link: allHomework[i].url,
          email: "XDD"
      ));
    }
    return new Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(children: <Widget>[
        new RichText(
            textAlign: TextAlign.left,
            text: new TextSpan(
              children: <TextSpan>[
                new TextSpan(
                  text: 'Zadanie domowe 😮\n',
                  style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Oxygen',
                      fontSize: 64),
                ),
              ],
            )),
        getHomeworkBars()
      ]),
    );
  }
}

class HomeworkBar extends StatelessWidget {
  final String link;
  final String email;
  final int number;

  HomeworkBar({this.link, this.number, this.email});

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new RichText(
              text: new TextSpan(
            text: '#' + number.toString(),
            style: new TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Oxygen',
                fontSize: 24),
          )),
          new Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.lightGreen,
                  size: 24.0,
                ),
                onPressed: () {
                  launch(link);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.mail_outline,
                  color: Colors.green,
                  size: 24.0,
                ),
                onPressed: () {
                launch("mailto:" + email + "?subject=Zadanie%20domowe&body=Dzien%20dobry,%20w%20zalaczniku%20przesylam%20rozwiazanie%20zadania%20domowego.");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
