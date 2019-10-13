import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/user.pb.dart';

import '../../generated/chat.pb.dart';
import '../../generated/chat.pbgrpc.dart';
import 'package:random_string/random_string.dart' as random;

class Client {
  ClientChannel channel;
  ChatServiceClient stub;
  User user;
  BuildContext context;

  Client(String name) {
    channel = new ClientChannel('0.0.0.0',
        port: 50052,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new ChatServiceClient(channel);
    this.user = new User()
      ..uuid = random.randomString(20)
      ..name = name;
  }

  void sendMessage(String message, String timestamp) {
    var grpcMessage = new Message()
      ..content = message
      ..timeStamp = timestamp;

    var grpcChatMessage = new ChatMessage()
      ..sender = this.user
      ..message = grpcMessage;

    this.stub.sendMessage(grpcChatMessage);
  }

  Future<void> receiveMessages() async {
    final call = stub.receiveMessages(this.user);
    await for (var chatMessage in call) {
      debugPrint(chatMessage.message.content);
      debugPrint(chatMessage.message.timeStamp);
    }
  }

}
