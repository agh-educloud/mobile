///
//  Generated code. Do not modify.
//  source: feedback.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class Feedback extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Feedback')
    ..a<$core.double>(1, 'note', $pb.PbFieldType.OD)
    ..aOS(2, 'name')
    ..aOS(3, 'comment')
    ..hasRequiredFields = false
  ;

  Feedback() : super();
  Feedback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Feedback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Feedback clone() => Feedback()..mergeFromMessage(this);
  Feedback copyWith(void Function(Feedback) updates) => super.copyWith((message) => updates(message as Feedback));
  $pb.BuilderInfo get info_ => _i;
  static Feedback create() => Feedback();
  Feedback createEmptyInstance() => create();
  static $pb.PbList<Feedback> createRepeated() => $pb.PbList<Feedback>();
  static Feedback getDefault() => _defaultInstance ??= create()..freeze();
  static Feedback _defaultInstance;

  $core.double get note => $_getN(0);
  set note($core.double v) { $_setDouble(0, v); }
  $core.bool hasNote() => $_has(0);
  void clearNote() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.String get comment => $_getS(2, '');
  set comment($core.String v) { $_setString(2, v); }
  $core.bool hasComment() => $_has(2);
  void clearComment() => clearField(3);
}

