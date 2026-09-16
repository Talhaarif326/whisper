// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseModelImpl _$$SignUpResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$SignUpResponseModelImpl(
  email: json['email'] as String,
  message: json['message'] as String,
  uid: json['uid'] as String,
);

Map<String, dynamic> _$$SignUpResponseModelImplToJson(
  _$SignUpResponseModelImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'message': instance.message,
  'uid': instance.uid,
};
