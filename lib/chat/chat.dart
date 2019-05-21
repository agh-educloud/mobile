import 'package:grpc/grpc.dart';
import 'package:mobile/generated/user.pb.dart';

import '../generated/chat.pb.dart';
import '../generated/chat.pbgrpc.dart';
import 'package:random_string/random_string.dart' as random;

class Client {
  ClientChannel channel;
  ChatServiceClient stub;

  Client() {
    channel = new ClientChannel('localhost',
        port: 9999,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new ChatServiceClient(channel,
        options: new CallOptions(timeout: new Duration(seconds: 30)));
  }

  Future<void> simulateChat() async {
    Stream<ChatMessage> outgoingChatMessages() async* {
      while (true) {
        await new Future.delayed(new Duration(seconds: 1));

        var sender = new User()
          ..uuid = "asfdsf"
          ..name = "User2";

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
      print('${chatMessage.sender.name}: ${chatMessage.message.content}');
    }
  }
}
