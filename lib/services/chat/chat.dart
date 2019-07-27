import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/user.pb.dart';
import 'package:path/path.dart';

import '../../generated/chat.pb.dart';
import '../../generated/chat.pbgrpc.dart';
import 'package:random_string/random_string.dart' as random;

class Client {
  ClientChannel channel;
  ChatServiceClient stub;
  String name;
  BuildContext context;

  Client(String name, BuildContext context) {
    channel = new ClientChannel('0.0.0.0',
        port: 50052,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new ChatServiceClient(channel);
    this.name = name;
    this.context = context;
  }

  Future<void> simulateChat() async {
    Stream<ChatMessage> outgoingChatMessages() async* {
      while (true) {
        await new Future.delayed(new Duration(seconds: 5));

        var sender = new User()
          ..uuid = "asfdsf"
          ..name = this.name;

        var message = new Message()
          ..content = random.randomString(10)
          ..timeStamp = random.randomString(4);

        var chatMessage = new ChatMessage()
          ..sender = sender
          ..message = message;

        yield chatMessage;
      }
    }

    final call = stub.exchangeMessages(outgoingChatMessages());
    await for (var chatMessage in call) {
      Scaffold.of(this.context).showSnackBar(new SnackBar(
        content: new Text(
            '${this.name} ${chatMessage.sender.name}: ${chatMessage.message.content}'),
      ));
//      debugPrint(
//          '${this.name} ${chatMessage.sender.name}: ${chatMessage.message.content}');
    }
  }
}
