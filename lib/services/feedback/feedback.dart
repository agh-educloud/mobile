import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile/generated/feedback.pbgrpc.dart';
import 'package:mobile/generated/feedback.pbgrpc.dart' as prefix0;

class Client {
  ClientChannel channel;
  FeedbackServiceClient stub;
  BuildContext context;

  Client() {
    channel = new ClientChannel('0.0.0.0',
        port: 50060,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new FeedbackServiceClient(channel);
  }

  sendFeedback(String name, double note, String comment) {
    prefix0.Feedback fb = new prefix0.Feedback()
      ..comment = comment
      ..name = name
      ..note = note;

    debugPrint(fb.name);
    debugPrint(fb.comment);
    debugPrint(fb.note.toString());
    this.stub.sendFeedback(fb);
  }
}
