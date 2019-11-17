///
//  Generated code. Do not modify.
//  source: quiz.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class QuizRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizRequest')
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  QuizRequest() : super();
  QuizRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizRequest clone() => QuizRequest()..mergeFromMessage(this);
  QuizRequest copyWith(void Function(QuizRequest) updates) => super.copyWith((message) => updates(message as QuizRequest));
  $pb.BuilderInfo get info_ => _i;
  static QuizRequest create() => QuizRequest();
  QuizRequest createEmptyInstance() => create();
  static $pb.PbList<QuizRequest> createRepeated() => $pb.PbList<QuizRequest>();
  static QuizRequest getDefault() => _defaultInstance ??= create()..freeze();
  static QuizRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);
}

class QuizAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuizAnswer')
    ..aOS(1, 'userId')
    ..aOS(2, 'answer')
    ..a<$core.List<$core.int>>(3, 'photo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QuizAnswer() : super();
  QuizAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  QuizAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  QuizAnswer clone() => QuizAnswer()..mergeFromMessage(this);
  QuizAnswer copyWith(void Function(QuizAnswer) updates) => super.copyWith((message) => updates(message as QuizAnswer));
  $pb.BuilderInfo get info_ => _i;
  static QuizAnswer create() => QuizAnswer();
  QuizAnswer createEmptyInstance() => create();
  static $pb.PbList<QuizAnswer> createRepeated() => $pb.PbList<QuizAnswer>();
  static QuizAnswer getDefault() => _defaultInstance ??= create()..freeze();
  static QuizAnswer _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  $core.String get answer => $_getS(1, '');
  set answer($core.String v) { $_setString(1, v); }
  $core.bool hasAnswer() => $_has(1);
  void clearAnswer() => clearField(2);

  $core.List<$core.int> get photo => $_getN(2);
  set photo($core.List<$core.int> v) { $_setBytes(2, v); }
  $core.bool hasPhoto() => $_has(2);
  void clearPhoto() => clearField(3);
}

class Question extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Question')
    ..aOS(1, 'classId')
    ..aOS(2, 'groupId')
    ..pPS(3, 'answers')
    ..aOB(4, 'photoQuestion')
    ..aOB(5, 'closedQuestion')
    ..aOB(6, 'openQuestion')
    ..hasRequiredFields = false
  ;

  Question() : super();
  Question.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Question.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Question clone() => Question()..mergeFromMessage(this);
  Question copyWith(void Function(Question) updates) => super.copyWith((message) => updates(message as Question));
  $pb.BuilderInfo get info_ => _i;
  static Question create() => Question();
  Question createEmptyInstance() => create();
  static $pb.PbList<Question> createRepeated() => $pb.PbList<Question>();
  static Question getDefault() => _defaultInstance ??= create()..freeze();
  static Question _defaultInstance;

  $core.String get classId => $_getS(0, '');
  set classId($core.String v) { $_setString(0, v); }
  $core.bool hasClassId() => $_has(0);
  void clearClassId() => clearField(1);

  $core.String get groupId => $_getS(1, '');
  set groupId($core.String v) { $_setString(1, v); }
  $core.bool hasGroupId() => $_has(1);
  void clearGroupId() => clearField(2);

  $core.List<$core.String> get answers => $_getList(2);

  $core.bool get photoQuestion => $_get(3, false);
  set photoQuestion($core.bool v) { $_setBool(3, v); }
  $core.bool hasPhotoQuestion() => $_has(3);
  void clearPhotoQuestion() => clearField(4);

  $core.bool get closedQuestion => $_get(4, false);
  set closedQuestion($core.bool v) { $_setBool(4, v); }
  $core.bool hasClosedQuestion() => $_has(4);
  void clearClosedQuestion() => clearField(5);

  $core.bool get openQuestion => $_get(5, false);
  set openQuestion($core.bool v) { $_setBool(5, v); }
  $core.bool hasOpenQuestion() => $_has(5);
  void clearOpenQuestion() => clearField(6);
}

