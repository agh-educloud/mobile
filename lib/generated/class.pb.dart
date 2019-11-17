///
//  Generated code. Do not modify.
//  source: class.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $1;

class JoinClassRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JoinClassRequest')
    ..aOS(1, 'secretCode')
    ..a<$1.User>(2, 'user', $pb.PbFieldType.OM, $1.User.getDefault, $1.User.create)
    ..hasRequiredFields = false
  ;

  JoinClassRequest() : super();
  JoinClassRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JoinClassRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JoinClassRequest clone() => JoinClassRequest()..mergeFromMessage(this);
  JoinClassRequest copyWith(void Function(JoinClassRequest) updates) => super.copyWith((message) => updates(message as JoinClassRequest));
  $pb.BuilderInfo get info_ => _i;
  static JoinClassRequest create() => JoinClassRequest();
  JoinClassRequest createEmptyInstance() => create();
  static $pb.PbList<JoinClassRequest> createRepeated() => $pb.PbList<JoinClassRequest>();
  static JoinClassRequest getDefault() => _defaultInstance ??= create()..freeze();
  static JoinClassRequest _defaultInstance;

  $core.String get secretCode => $_getS(0, '');
  set secretCode($core.String v) { $_setString(0, v); }
  $core.bool hasSecretCode() => $_has(0);
  void clearSecretCode() => clearField(1);

  $1.User get user => $_getN(1);
  set user($1.User v) { setField(2, v); }
  $core.bool hasUser() => $_has(1);
  void clearUser() => clearField(2);
}

