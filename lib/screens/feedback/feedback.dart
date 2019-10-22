import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/main/main.dart';
import 'package:mobile/services/feedback/feedback.dart';
import 'package:mobile/widgets/page_title.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:toast/toast.dart';

double rating = 0;
TextEditingController name = new TextEditingController();
TextEditingController comments = new TextEditingController();

class Feedback extends StatefulWidget {
  @override
  FeedbackState createState() {
    return new FeedbackState();
  }
}

class FeedbackState extends State<Feedback> {
  int homeworkLength = 0;
  var allHomework;

  FeedbackState() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Padding(padding: EdgeInsets.all(20.0)),
          new PageTitle(
            text: "Feedback",
          ),
          new Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nazwisko prowadzącego',
                ),
              )),
          new Padding(padding: EdgeInsets.all(15.0)),
          new Container(
              width: MediaQuery.of(context).size.width * 0.95,
              child: TextField(
                controller: comments,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Uwagi',
                ),
              )),
          new Padding(padding: EdgeInsets.all(15.0)),
          SmoothStarRating(
              allowHalfRating: false,
              onRatingChanged: (v) {
                rating = v;
                setState(() {});
              },
              starCount: 10,
              rating: rating,
              size: 40.0,
              color: Colors.black,
              borderColor: Colors.black,
              spacing: 0.0),
          new Padding(padding: EdgeInsets.all(35.0)),
          new FlatButton(
            onPressed: () {
              Client().sendFeedback(name.text, rating, comments.text);

              Toast.show("Wysłano ocene prowadzacego", context,
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Main()),
              );
            },
            textColor: Colors.white,
            color: Colors.blue,
            child: const Text('WYŚLIJ'),
          ),
        ],
      ),
    );
  }
}
