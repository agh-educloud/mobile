import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/screens/chat/widget/message.dart';
import 'package:mobile/services/chat/chat.dart';
import 'package:mobile/widgets/page_title.dart';

final List<ChatMessageOnScreen> _messages = <ChatMessageOnScreen>[];

class Chat extends StatefulWidget {
  @override
  State createState() => new ChatState();
}

class ChatState extends State<Chat> {
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

  @override
  void initState() {
    super.initState();
    Client().receiveMessages(insert);
  }

  void insert(message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Padding(padding: EdgeInsets.all(20.0)),
          new PageTitle(
            text: "Chat",
          ),
          new Flexible(
            child: ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0)),
          _newMessage(),
          new Padding(padding: EdgeInsets.all(10.0)),
        ],
      ),
    );
  }
}
