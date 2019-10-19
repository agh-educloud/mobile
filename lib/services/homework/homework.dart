import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/homework.pbgrpc.dart';
import 'package:mobile/generated/status.pb.dart';

class Client {
  ClientChannel channel;
  UserHomeworkServiceClient stub;
  BuildContext context;

  Client() {
    channel = new ClientChannel('0.0.0.0',
        port: 50053,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new UserHomeworkServiceClient(channel);
  }

  Future<Homeworks> getHomework() async {
    debugPrint("XDD");
    return this.stub.getHomeworks(Status());
  }
}
