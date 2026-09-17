// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MessageResponseModel _$MessageResponseModelFromJson(Map<String, dynamic> json) {
  return _MessageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MessageResponseModel {
  String get message => throw _privateConstructorUsedError;
  bool get isMine => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this MessageResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageResponseModelCopyWith<MessageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseModelCopyWith<$Res> {
  factory $MessageResponseModelCopyWith(
    MessageResponseModel value,
    $Res Function(MessageResponseModel) then,
  ) = _$MessageResponseModelCopyWithImpl<$Res, MessageResponseModel>;
  @useResult
  $Res call({String message, bool isMine, String uid, DateTime timestamp});
}

/// @nodoc
class _$MessageResponseModelCopyWithImpl<
  $Res,
  $Val extends MessageResponseModel
>
    implements $MessageResponseModelCopyWith<$Res> {
  _$MessageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isMine = null,
    Object? uid = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            isMine: null == isMine
                ? _value.isMine
                : isMine // ignore: cast_nullable_to_non_nullable
                      as bool,
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageResponseModelImplCopyWith<$Res>
    implements $MessageResponseModelCopyWith<$Res> {
  factory _$$MessageResponseModelImplCopyWith(
    _$MessageResponseModelImpl value,
    $Res Function(_$MessageResponseModelImpl) then,
  ) = __$$MessageResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isMine, String uid, DateTime timestamp});
}

/// @nodoc
class __$$MessageResponseModelImplCopyWithImpl<$Res>
    extends _$MessageResponseModelCopyWithImpl<$Res, _$MessageResponseModelImpl>
    implements _$$MessageResponseModelImplCopyWith<$Res> {
  __$$MessageResponseModelImplCopyWithImpl(
    _$MessageResponseModelImpl _value,
    $Res Function(_$MessageResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isMine = null,
    Object? uid = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$MessageResponseModelImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        isMine: null == isMine
            ? _value.isMine
            : isMine // ignore: cast_nullable_to_non_nullable
                  as bool,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResponseModelImpl implements _MessageResponseModel {
  const _$MessageResponseModelImpl({
    required this.message,
    required this.isMine,
    required this.uid,
    required this.timestamp,
  });

  factory _$MessageResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResponseModelImplFromJson(json);

  @override
  final String message;
  @override
  final bool isMine;
  @override
  final String uid;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'MessageResponseModel(message: $message, isMine: $isMine, uid: $uid, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResponseModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, isMine, uid, timestamp);

  /// Create a copy of MessageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResponseModelImplCopyWith<_$MessageResponseModelImpl>
  get copyWith =>
      __$$MessageResponseModelImplCopyWithImpl<_$MessageResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResponseModelImplToJson(this);
  }
}

abstract class _MessageResponseModel implements MessageResponseModel {
  const factory _MessageResponseModel({
    required final String message,
    required final bool isMine,
    required final String uid,
    required final DateTime timestamp,
  }) = _$MessageResponseModelImpl;

  factory _MessageResponseModel.fromJson(Map<String, dynamic> json) =
      _$MessageResponseModelImpl.fromJson;

  @override
  String get message;
  @override
  bool get isMine;
  @override
  String get uid;
  @override
  DateTime get timestamp;

  /// Create a copy of MessageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageResponseModelImplCopyWith<_$MessageResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
