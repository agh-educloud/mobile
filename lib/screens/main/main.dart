import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
          new Padding(padding: EdgeInsets.all(20.0)),
          new MainWindowTitle(),
          new GreyRoundedRectangle(),
          new Padding(padding: EdgeInsets.all(5.0)),
          new GreyRoundedRectangle(),
          new Padding(padding: EdgeInsets.all(5.0)),
          new Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new GreyCircle(),
                new GreyCircle(),
                new GreyCircle()
              ],
            ),
          )
        ]))));
  }
}

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

class GreyRoundedRectangle extends StatelessWidget {
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
          child: new Center(
            child: new Text("Hi modal sheet"),
          )),
    );
  }
}

class GreyCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 65,
      width: 65,
      color: Colors.transparent,
      child: new Container(
          decoration: new BoxDecoration(
              color: Color(0xffC4C4C4).withOpacity(0.19),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: new Center(
            child: new Text("Hi"),
          )),
    );
  }
}
