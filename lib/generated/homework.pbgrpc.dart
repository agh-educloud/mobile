///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'homework.pb.dart';
import 'status.pb.dart' as $0;
export 'homework.pb.dart';

class PresenterHomeworkServiceClient extends $grpc.Client {
  static final _$createHomework = $grpc.ClientMethod<Homework, $0.Status>(
      '/PresenterHomeworkService/CreateHomework',
      (Homework value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));

  PresenterHomeworkServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Status> createHomework(Homework request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createHomework, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PresenterHomeworkServiceBase extends $grpc.Service {
  $core.String get $name => 'PresenterHomeworkService';

  PresenterHomeworkServiceBase() {
    $addMethod($grpc.ServiceMethod<Homework, $0.Status>(
        'CreateHomework',
        createHomework_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Homework.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> createHomework_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createHomework(call, await request);
  }

  $async.Future<$0.Status> createHomework(
      $grpc.ServiceCall call, Homework request);
}

class UserHomeworkServiceClient extends $grpc.Client {
  static final _$sendHomeworkSolution = $grpc.ClientMethod<Homework, $0.Status>(
      '/UserHomeworkService/SendHomeworkSolution',
      (Homework value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Status.fromBuffer(value));
  static final _$getHomeworks = $grpc.ClientMethod<$0.Status, Homeworks>(
      '/UserHomeworkService/GetHomeworks',
      ($0.Status value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Homeworks.fromBuffer(value));

  UserHomeworkServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Status> sendHomeworkSolution(Homework request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendHomeworkSolution, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<Homeworks> getHomeworks($0.Status request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getHomeworks, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UserHomeworkServiceBase extends $grpc.Service {
  $core.String get $name => 'UserHomeworkService';

  UserHomeworkServiceBase() {
    $addMethod($grpc.ServiceMethod<Homework, $0.Status>(
        'SendHomeworkSolution',
        sendHomeworkSolution_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Homework.fromBuffer(value),
        ($0.Status value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Status, Homeworks>(
        'GetHomeworks',
        getHomeworks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Status.fromBuffer(value),
        (Homeworks value) => value.writeToBuffer()));
  }

  $async.Future<$0.Status> sendHomeworkSolution_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sendHomeworkSolution(call, await request);
  }

  $async.Future<Homeworks> getHomeworks_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getHomeworks(call, await request);
  }

  $async.Future<$0.Status> sendHomeworkSolution(
      $grpc.ServiceCall call, Homework request);
  $async.Future<Homeworks> getHomeworks(
      $grpc.ServiceCall call, $0.Status request);
}
