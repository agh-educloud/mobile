import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/homework.pbgrpc.dart';
import 'package:mobile/generated/status.pb.dart';
import 'package:mobile/globals.dart' as globals;

class Client {
  ClientChannel channel;
  UserHomeworkServiceClient stub;
  BuildContext context;

  Client() {
    channel = new ClientChannel(globals.serverAddress,
        port: 50053,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new UserHomeworkServiceClient(channel);
  }

  Future<Homeworks> getHomework() async {
    return this.stub.getHomeworks(Status());
  }
}
