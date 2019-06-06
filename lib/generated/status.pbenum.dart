///
//  Generated code. Do not modify.
//  source: status.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Status_Code extends $pb.ProtobufEnum {
  static const Status_Code OK = Status_Code._(0, 'OK');
  static const Status_Code DENIED = Status_Code._(1, 'DENIED');
  static const Status_Code SERVER_ERROR = Status_Code._(2, 'SERVER_ERROR');

  static const $core.List<Status_Code> values = <Status_Code> [
    OK,
    DENIED,
    SERVER_ERROR,
  ];

  static final $core.Map<$core.int, Status_Code> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status_Code valueOf($core.int value) => _byValue[value];

  const Status_Code._($core.int v, $core.String n) : super(v, n);
}

