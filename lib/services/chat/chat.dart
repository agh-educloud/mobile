import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/user.pb.dart';
import 'package:mobile/screens/chat/widget/message.dart';

import '../../generated/chat.pb.dart';
import '../../generated/chat.pbgrpc.dart';
import 'package:random_string/random_string.dart' as random;
import 'package:mobile/globals.dart' as globals;

class Client {
  ClientChannel channel;
  ChatServiceClient stub;
  User user;
  BuildContext context;

  Client() {
    channel = new ClientChannel(globals.serverAddress,
        port: 50052,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new ChatServiceClient(channel);
    this.user = new User()
      ..uuid = globals.uuid
      ..name = globals.user;
  }

  void sendMessage(String message, String timestamp) {
    var grpcMessage = new Message()
      ..content = message
      ..timeStamp = timestamp;

    var grpcChatMessage = new ChatMessage()
      ..sender = this.user
      ..code =
          globals.subClass != "EMPTY" ? globals.subClass : globals.mainClass
      ..message = grpcMessage;
    this.stub.sendMessage(grpcChatMessage);
    debugPrint("SENT MESSAGE");
  }

  Future<void> receiveMessages(insert) async {
    while (true) {
      try {
        final call = stub.receiveMessages(this.user);
        await for (var chatMessage in call) {
          if (chatMessage.code == globals.mainClass ||
              chatMessage.code == globals.subClass) {
            ChatMessageOnScreen message = new ChatMessageOnScreen(
              name: chatMessage.sender.name,
              text: chatMessage.message.content,
              date: chatMessage.message.timeStamp,
              icon: getIcon(chatMessage.sender.uuid == globals.uuid),
              fromLocalDevice: chatMessage.sender.uuid == globals.uuid,
            );
            debugPrint(chatMessage.sender.uuid);
            debugPrint(globals.uuid);
            insert(message);
          }
        }
      } catch (_) {}
    }
  }
}

Icon getIcon(bool local) {
  if (local) return new Icon(Icons.ac_unit, color: Colors.red, size: 22.0);
  return new Icon(Icons.accessibility_new, color: Colors.blue, size: 22.0);
}
