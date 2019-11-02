import 'package:grpc/grpc.dart';
import 'package:mobile/generated/quiz.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/generated/status.pb.dart';
import 'package:mobile/globals.dart' as globals;
import 'package:mobile/screens/quiz/quiz.dart';

class Client {
  ClientChannel channel;
  QuizServiceClient stub;
  BuildContext context;

  Client() {
    channel = new ClientChannel(globals.serverAddress,
        port: 50062,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    stub = new QuizServiceClient(channel);
  }

  Future<Status> answerQuestion(answer) async {
    return this.stub.answerQuestion(answer);
  }

  Future<void> waitForQuestion() async {
    while (true) {
      try {
        final request = QuizRequest()..userId = globals.uuid;

        final call = stub.waitForQuestions(request);
        await for (var question in call) {
          if (question.classId == globals.mainClass) {
            globals.question = question;
            debugPrint("RECEIVED QUIZ");
            debugPrint(question.classId);

            Navigator.push(
              globals.context,
              MaterialPageRoute(builder: (context) => Quiz()),
            );
          }
        }
      } catch (_) {}
    }
  }
}
