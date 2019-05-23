///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'chat.pb.dart';
export 'chat.pb.dart';

class ChatServiceClient extends $grpc.Client {
  static final _$exchangeMessages =
      $grpc.ClientMethod<ChatMessage, ChatMessage>(
          '/mobile.ChatService/ExchangeMessages',
          (ChatMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => ChatMessage.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<ChatMessage> exchangeMessages(
      $async.Stream<ChatMessage> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$exchangeMessages, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'mobile.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<ChatMessage, ChatMessage>(
        'ExchangeMessages',
        exchangeMessages,
        true,
        true,
        ($core.List<$core.int> value) => ChatMessage.fromBuffer(value),
        (ChatMessage value) => value.writeToBuffer()));
  }

  $async.Stream<ChatMessage> exchangeMessages(
      $grpc.ServiceCall call, $async.Stream<ChatMessage> request);
}
