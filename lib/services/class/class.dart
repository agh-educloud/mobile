import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/status.pb.dart';
import 'package:mobile/generated/user.pb.dart';

import '../../generated/class.pb.dart';
import '../../generated/class.pbgrpc.dart';
import 'package:mobile/globals.dart' as globals;

class Client {
  ClientChannel channel;
  UserClassServiceClient stub;
  User user;
  BuildContext context;

  Client() {
    channel = new ClientChannel(globals.serverAddress,
        port: 50099,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new UserClassServiceClient(channel);
    this.user = new User()
      ..uuid = globals.uuid
      ..name = globals.user;
  }

  Future<Status> canJoinClass(String code) {
    var joinClassReq = new JoinClassRequest()
      ..user = this.user
      ..secretCode = code;

    return this.stub.joinClass(joinClassReq);
  }
}
