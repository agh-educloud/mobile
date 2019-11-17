///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'class.pb.dart';
import 'status.pb.dart' as $0;
export 'class.pb.dart';

class UserClassServiceClient extends $grpc.Client {
  static final _$joinClass = $grpc.ClientMethod<JoinClassRequest, $0.Status>(
      '/UserClassService/JoinClass',
      (JoinClassRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));

  UserClassServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Status> joinClass(JoinClassRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$joinClass, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UserClassServiceBase extends $grpc.Service {
  $core.String get $name => 'UserClassService';

  UserClassServiceBase() {
    $addMethod($grpc.ServiceMethod<JoinClassRequest, $0.Status>(
        'JoinClass',
        joinClass_Pre,
        false,
        false,
        ($core.List<$core.int> value) => JoinClassRequest.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> joinClass_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return joinClass(call, await request);
  }

  $async.Future<$0.Status> joinClass(
      $grpc.ServiceCall call, JoinClassRequest request);
}
