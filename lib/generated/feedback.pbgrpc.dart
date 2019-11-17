///
//  Generated code. Do not modify.
//  source: feedback.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'feedback.pb.dart';
import 'status.pb.dart' as $0;
export 'feedback.pb.dart';

class FeedbackServiceClient extends $grpc.Client {
  static final _$sendFeedback = $grpc.ClientMethod<Feedback, $0.Status>(
      '/FeedbackService/SendFeedback',
      (Feedback value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));

  FeedbackServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Status> sendFeedback(Feedback request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendFeedback, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class FeedbackServiceBase extends $grpc.Service {
  $core.String get $name => 'FeedbackService';

  FeedbackServiceBase() {
    $addMethod($grpc.ServiceMethod<Feedback, $0.Status>(
        'SendFeedback',
        sendFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Feedback.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> sendFeedback_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sendFeedback(call, await request);
  }

  $async.Future<$0.Status> sendFeedback(
      $grpc.ServiceCall call, Feedback request);
}
