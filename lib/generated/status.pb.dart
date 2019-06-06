///
//  Generated code. Do not modify.
//  source: status.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'status.pbenum.dart';

export 'status.pbenum.dart';

class Status extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Status')
    ..e<Status_Code>(1, 'code', $pb.PbFieldType.OE, Status_Code.OK, Status_Code.valueOf, Status_Code.values)
    ..aOS(2, 'message')
    ..aOS(3, 'details')
    ..hasRequiredFields = false
  ;

  Status() : super();
  Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Status clone() => Status()..mergeFromMessage(this);
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status));
  $pb.BuilderInfo get info_ => _i;
  static Status create() => Status();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  static Status getDefault() => _defaultInstance ??= create()..freeze();
  static Status _defaultInstance;

  Status_Code get code => $_getN(0);
  set code(Status_Code v) { setField(1, v); }
  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  $core.String get message => $_getS(1, '');
  set message($core.String v) { $_setString(1, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);

  $core.String get details => $_getS(2, '');
  set details($core.String v) { $_setString(2, v); }
  $core.bool hasDetails() => $_has(2);
  void clearDetails() => clearField(3);
}

