///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'quiz.pb.dart';
import 'status.pb.dart' as $0;
export 'quiz.pb.dart';

class QuizServiceClient extends $grpc.Client {
  static final _$waitForQuestions = $grpc.ClientMethod<QuizRequest, Question>(
      '/QuizService/WaitForQuestions',
      (QuizRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Question.fromBuffer(value));
  static final _$answerQuestion = $grpc.ClientMethod<QuizAnswer, $0.Status>(
      '/QuizService/AnswerQuestion',
      (QuizAnswer value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));

  QuizServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<Question> waitForQuestions(QuizRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$waitForQuestions, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.Status> answerQuestion(QuizAnswer request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$answerQuestion, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class QuizServiceBase extends $grpc.Service {
  $core.String get $name => 'QuizService';

  QuizServiceBase() {
    $addMethod($grpc.ServiceMethod<QuizRequest, Question>(
        'WaitForQuestions',
        waitForQuestions_Pre,
        false,
        true,
        ($core.List<$core.int> value) => QuizRequest.fromBuffer(value),
        (Question value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<QuizAnswer, $0.Status>(
        'AnswerQuestion',
        answerQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => QuizAnswer.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
  }

  $async.Stream<Question> waitForQuestions_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* waitForQuestions(call, (await request) as QuizRequest);
  }

  $async.Future<$0.Status> answerQuestion_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return answerQuestion(call, await request);
  }

  $async.Stream<Question> waitForQuestions(
      $grpc.ServiceCall call, QuizRequest request);
  $async.Future<$0.Status> answerQuestion(
      $grpc.ServiceCall call, QuizAnswer request);
}
