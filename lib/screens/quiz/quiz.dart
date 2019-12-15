import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/generated/quiz.pb.dart';
import 'package:mobile/generated/status.pb.dart';
import 'package:mobile/screens/answer/answer.dart';
import 'package:mobile/services/chat/chat.dart';
import 'package:mobile/services/quiz/quiz.dart' as prefix0;
import 'package:mobile/widgets/page_title.dart';
import 'package:mobile/globals.dart' as globals;
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:random_string/random_string.dart' as random;

FirebaseStorage _storage = FirebaseStorage.instance;

class Quiz extends StatefulWidget {
  @override
  State createState() => new QuizState();
}

class QuizState extends State<Quiz> {
  int start = 200;
  Timer _timer;
  bool uploading = false;

  Future<String> uploadPic() async {
    uploading = true;

    //Get the file from the image picker and store it
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);

    //Create a reference to the location you want to upload to in firebase
    StorageReference reference =
        _storage.ref().child("images/" + random.randomString(10));

    //Upload the file to firebase
    StorageUploadTask uploadTask = reference.putFile(image);

    // Waits till the file is uploaded then stores the download url
//  returns the download url
    return await (await uploadTask.onComplete).ref.getDownloadURL();
  }

  @override
  void initState() {
    start = 200;
    super.initState();
    globals.registeredSetState = () => setState(() => null);
    timer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void timer() async {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (start < 1) {
            timer.cancel();
            globals.wasAnswerCorrect = false;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Answer()),
            );
          } else {
            start = start - 1;
          }
        },
      ),
    );
  }

  final TextEditingController _chatController = new TextEditingController();

  void _handleSubmit(String text) {
    _chatController.clear();

    DateTime time = new DateTime.now();
    String timestamp = time.hour.toString() + ":" + time.minute.toString();

    Client().sendMessage(text, timestamp);
  }

  Widget _newMessage() {
    return Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 50.0,
        color: Colors.transparent,
        child: new Container(
            decoration: new BoxDecoration(
                color: Color(0xffC4C4C4).withOpacity(0.19),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  children: <Widget>[
                    Flexible(
                      child: new TextField(
                        style: new TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Oxygen',
                            fontSize: 12),
                        controller: _chatController,
                        decoration: new InputDecoration.collapsed(
                            hintText: "Napisz wiadomość"),
                      ),
                    ),
                    new Container(
                      child: new IconButton(
                        icon: new Icon(
                          Icons.send,
                          color: Color(0xff019875),
                          size: 16.0,
                        ),
                        onPressed: () => _handleSubmit(_chatController.text),
                      ),
                    )
                  ],
                ))));
  }

  void answer(answer) {
    debugPrint("SENDING" + answer);

    prefix0.Client()
        .answerQuestion(QuizAnswer()
          ..answer = answer
          ..userId = globals.uuid)
        .then((value) {
      if (value.code == Status_Code.OK) {
        globals.wasAnswerCorrect = true;
      } else {
        globals.wasAnswerCorrect = false;
      }
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Answer()),
      );
    });
    globals.subClass = "EMPTY";
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(children: <Widget>[
      new Padding(padding: EdgeInsets.all(20.0)),
      new PageTitle(
        text: "Pytanie",
      ),
      globals.question.closedQuestion
          ? new LongButton(
              buttonName: globals.question.answers[0],
              onPressed: () => answer(globals.question.answers[0]))
          : new Container(),
      globals.question.closedQuestion
          ? new LongButton(
              buttonName: globals.question.answers[1],
              onPressed: () => answer(globals.question.answers[1]),
            )
          : new Container(),
      globals.question.closedQuestion
          ? new LongButton(
              buttonName: globals.question.answers[2],
              onPressed: () => answer(globals.question.answers[2]),
            )
          : new Container(),
      globals.question.closedQuestion
          ? new LongButton(
              buttonName: globals.question.answers[3],
              onPressed: () => answer(globals.question.answers[3]),
            )
          : new Container(),
      globals.question.photoQuestion
          ? new LongButton(
              buttonName: "Wybierz zdjecie z telefonu",
              onPressed: () {
                uploadPic().then((value) {
                  prefix0.Client().answerQuestion(QuizAnswer()..answer = value);
                  globals.wasAnswerCorrect = true;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Answer()),
                  );
                });
              },
            )
          : new Container(),
      new Padding(padding: EdgeInsets.all(10.0)),
      new RichText(
          textAlign: TextAlign.left,
          text: new TextSpan(
            children: <TextSpan>[
              new TextSpan(
                text: 'Masz ' + start.toString() + " sekund na odpowiedź.",
                style: new TextStyle(
                    color: Colors.red, fontFamily: 'Oxygen', fontSize: 12),
              ),
            ],
          )),
      uploading
          ? new RichText(
              textAlign: TextAlign.left,
              text: new TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: "Odpowiedz wysyłana do prowadzacego, czekaj.",
                    style: new TextStyle(
                        color: Colors.green,
                        fontFamily: 'Oxygen',
                        fontSize: 12),
                  ),
                ],
              ))
          : new Container(),
      new Padding(padding: EdgeInsets.all(10.0)),
      new Container(
        height: 1,
        width: MediaQuery.of(context).size.width * 0.95,
        color: Colors.black12,
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      ),
      new Flexible(
        child: ListView.builder(
          padding: new EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => globals.messages[index],
          itemCount: globals.messages.length,
        ),
      ),
      new Padding(padding: EdgeInsets.all(10.0)),
      _newMessage(),
      new Padding(padding: EdgeInsets.all(10.0)),
    ]));
  }
}

class LongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;

  //passing props in react style
  LongButton({this.buttonName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        width: MediaQuery.of(context).size.width * 0.95, // specific value
        child: new FlatButton(
          child: new Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: buttonName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Oxygen',
                              fontSize: 12),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          onPressed: onPressed,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          color: Colors.black12,
          splashColor: Colors.white,
        ));
  }
}
