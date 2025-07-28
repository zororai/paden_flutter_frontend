// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertStruct extends BaseStruct {
  PropertStruct({
    String? uri,
  }) : _uri = uri;

  // "uri" field.
  String? _uri;
  String get uri => _uri ?? '';
  set uri(String? val) => _uri = val;

  bool hasUri() => _uri != null;

  static PropertStruct fromMap(Map<String, dynamic> data) => PropertStruct(
        uri: data['uri'] as String?,
      );

  static PropertStruct? maybeFromMap(dynamic data) =>
      data is Map ? PropertStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uri': _uri,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uri': serializeParam(
          _uri,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertStruct(
        uri: deserializeParam(
          data['uri'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertStruct && uri == other.uri;
  }

  @override
  int get hashCode => const ListEquality().hash([uri]);
}

PropertStruct createPropertStruct({
  String? uri,
}) =>
    PropertStruct(
      uri: uri,
    );
