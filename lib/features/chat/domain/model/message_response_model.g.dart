// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageResponseModelImpl _$$MessageResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$MessageResponseModelImpl(
  message: json['message'] as String,
  senderName: json['senderName'] as String?,
  isMine: json['isMine'] as bool,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$$MessageResponseModelImplToJson(
  _$MessageResponseModelImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'senderName': instance.senderName,
  'isMine': instance.isMine,
  'timestamp': instance.timestamp.toIso8601String(),
};
