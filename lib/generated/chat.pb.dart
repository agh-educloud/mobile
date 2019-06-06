///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

class ChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChatMessage')
    ..a<$0.User>(1, 'sender', $pb.PbFieldType.OM, $0.User.getDefault, $0.User.create)
    ..a<Message>(2, 'message', $pb.PbFieldType.OM, Message.getDefault, Message.create)
    ..hasRequiredFields = false
  ;

  ChatMessage() : super();
  ChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  ChatMessage copyWith(void Function(ChatMessage) updates) => super.copyWith((message) => updates(message as ChatMessage));
  $pb.BuilderInfo get info_ => _i;
  static ChatMessage create() => ChatMessage();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  static ChatMessage getDefault() => _defaultInstance ??= create()..freeze();
  static ChatMessage _defaultInstance;

  $0.User get sender => $_getN(0);
  set sender($0.User v) { setField(1, v); }
  $core.bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  Message get message => $_getN(1);
  set message(Message v) { setField(2, v); }
  $core.bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Message')
    ..aOS(1, 'content')
    ..aOS(2, 'timeStamp')
    ..hasRequiredFields = false
  ;

  Message() : super();
  Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Message clone() => Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  static Message create() => Message();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  static Message getDefault() => _defaultInstance ??= create()..freeze();
  static Message _defaultInstance;

  $core.String get content => $_getS(0, '');
  set content($core.String v) { $_setString(0, v); }
  $core.bool hasContent() => $_has(0);
  void clearContent() => clearField(1);

  $core.String get timeStamp => $_getS(1, '');
  set timeStamp($core.String v) { $_setString(1, v); }
  $core.bool hasTimeStamp() => $_has(1);
  void clearTimeStamp() => clearField(2);
}

