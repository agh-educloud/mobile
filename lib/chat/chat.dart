import 'package:grpc/grpc.dart';

import '../generated/chat.pb.dart';
import '../generated/chat.pbgrpc.dart';

class Client {
  ClientChannel channel;
  ChatServiceClient stub;

  Future<void> main(List<String> args) async {
    channel = new ClientChannel('127.0.0.1',
        port: 8080,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    stub = new ChatServiceClient(channel,
        options: new CallOptions(timeout: new Duration(seconds: 30)));
    // Run all of the demos in order.
    try {
      await runChat();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }
}
