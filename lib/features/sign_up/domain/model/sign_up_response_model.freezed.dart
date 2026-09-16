// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) {
  return _SignUpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponseModel {
  String get email => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  /// Serializes this SignUpResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResponseModelCopyWith<SignUpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseModelCopyWith<$Res> {
  factory $SignUpResponseModelCopyWith(
    SignUpResponseModel value,
    $Res Function(SignUpResponseModel) then,
  ) = _$SignUpResponseModelCopyWithImpl<$Res, SignUpResponseModel>;
  @useResult
  $Res call({String email, String message, String uid});
}

/// @nodoc
class _$SignUpResponseModelCopyWithImpl<$Res, $Val extends SignUpResponseModel>
    implements $SignUpResponseModelCopyWith<$Res> {
  _$SignUpResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? message = null,
    Object? uid = null,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignUpResponseModelImplCopyWith<$Res>
    implements $SignUpResponseModelCopyWith<$Res> {
  factory _$$SignUpResponseModelImplCopyWith(
    _$SignUpResponseModelImpl value,
    $Res Function(_$SignUpResponseModelImpl) then,
  ) = __$$SignUpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String message, String uid});
}

/// @nodoc
class __$$SignUpResponseModelImplCopyWithImpl<$Res>
    extends _$SignUpResponseModelCopyWithImpl<$Res, _$SignUpResponseModelImpl>
    implements _$$SignUpResponseModelImplCopyWith<$Res> {
  __$$SignUpResponseModelImplCopyWithImpl(
    _$SignUpResponseModelImpl _value,
    $Res Function(_$SignUpResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? message = null,
    Object? uid = null,
  }) {
    return _then(
      _$SignUpResponseModelImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseModelImpl implements _SignUpResponseModel {
  const _$SignUpResponseModelImpl({
    required this.email,
    required this.message,
    required this.uid,
  });

  factory _$SignUpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseModelImplFromJson(json);

  @override
  final String email;
  @override
  final String message;
  @override
  final String uid;

  @override
  String toString() {
    return 'SignUpResponseModel(email: $email, message: $message, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, message, uid);

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseModelImplCopyWith<_$SignUpResponseModelImpl> get copyWith =>
      __$$SignUpResponseModelImplCopyWithImpl<_$SignUpResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseModelImplToJson(this);
  }
}

abstract class _SignUpResponseModel implements SignUpResponseModel {
  const factory _SignUpResponseModel({
    required final String email,
    required final String message,
    required final String uid,
  }) = _$SignUpResponseModelImpl;

  factory _SignUpResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseModelImpl.fromJson;

  @override
  String get email;
  @override
  String get message;
  @override
  String get uid;

  /// Create a copy of SignUpResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResponseModelImplCopyWith<_$SignUpResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
