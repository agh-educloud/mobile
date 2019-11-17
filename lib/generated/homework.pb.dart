///
//  Generated code. Do not modify.
//  source: homework.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class Homework extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Homework')
    ..a<$core.int>(1, 'homeworkUuid', $pb.PbFieldType.O3)
    ..aOS(2, 'url')
    ..aOS(3, 'mailTo')
    ..hasRequiredFields = false
  ;

  Homework() : super();
  Homework.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Homework.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Homework clone() => Homework()..mergeFromMessage(this);
  Homework copyWith(void Function(Homework) updates) => super.copyWith((message) => updates(message as Homework));
  $pb.BuilderInfo get info_ => _i;
  static Homework create() => Homework();
  Homework createEmptyInstance() => create();
  static $pb.PbList<Homework> createRepeated() => $pb.PbList<Homework>();
  static Homework getDefault() => _defaultInstance ??= create()..freeze();
  static Homework _defaultInstance;

  $core.int get homeworkUuid => $_get(0, 0);
  set homeworkUuid($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasHomeworkUuid() => $_has(0);
  void clearHomeworkUuid() => clearField(1);

  $core.String get url => $_getS(1, '');
  set url($core.String v) { $_setString(1, v); }
  $core.bool hasUrl() => $_has(1);
  void clearUrl() => clearField(2);

  $core.String get mailTo => $_getS(2, '');
  set mailTo($core.String v) { $_setString(2, v); }
  $core.bool hasMailTo() => $_has(2);
  void clearMailTo() => clearField(3);
}

class Homeworks extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Homeworks')
    ..pc<Homework>(1, 'homework', $pb.PbFieldType.PM,Homework.create)
    ..hasRequiredFields = false
  ;

  Homeworks() : super();
  Homeworks.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Homeworks.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Homeworks clone() => Homeworks()..mergeFromMessage(this);
  Homeworks copyWith(void Function(Homeworks) updates) => super.copyWith((message) => updates(message as Homeworks));
  $pb.BuilderInfo get info_ => _i;
  static Homeworks create() => Homeworks();
  Homeworks createEmptyInstance() => create();
  static $pb.PbList<Homeworks> createRepeated() => $pb.PbList<Homeworks>();
  static Homeworks getDefault() => _defaultInstance ??= create()..freeze();
  static Homeworks _defaultInstance;

  $core.List<Homework> get homework => $_getList(0);
}

