///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'user.pb.dart' as $0;
import 'chat.pb.dart';
import 'status.pb.dart' as $1;
export 'chat.pb.dart';

class ChatServiceClient extends $grpc.Client {
  static final _$receiveMessages = $grpc.ClientMethod<$0.User, ChatMessage>(
      '/ChatService/ReceiveMessages',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => ChatMessage.fromBuffer(value));
  static final _$sendMessage = $grpc.ClientMethod<ChatMessage, $1.Status>(
      '/ChatService/SendMessage',
      (ChatMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Status.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<ChatMessage> receiveMessages($0.User request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$receiveMessages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$1.Status> sendMessage(ChatMessage request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, ChatMessage>(
        'ReceiveMessages',
        receiveMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        (ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ChatMessage, $1.Status>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ChatMessage.fromBuffer(value),
        ($1.Status value) => value.writeToBuffer()));
  }

  $async.Stream<ChatMessage> receiveMessages_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* receiveMessages(call, (await request) as $0.User);
  }

  $async.Future<$1.Status> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sendMessage(call, await request);
  }

  $async.Stream<ChatMessage> receiveMessages(
      $grpc.ServiceCall call, $0.User request);
  $async.Future<$1.Status> sendMessage(
      $grpc.ServiceCall call, ChatMessage request);
}
