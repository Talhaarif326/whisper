// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this LoginModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
    LoginModel value,
    $Res Function(LoginModel) then,
  ) = _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call({String message, int statusCode, String status});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            statusCode: null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginModelImplCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$LoginModelImplCopyWith(
    _$LoginModelImpl value,
    $Res Function(_$LoginModelImpl) then,
  ) = __$$LoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, String status});
}

/// @nodoc
class __$$LoginModelImplCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$LoginModelImpl>
    implements _$$LoginModelImplCopyWith<$Res> {
  __$$LoginModelImplCopyWithImpl(
    _$LoginModelImpl _value,
    $Res Function(_$LoginModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? status = null,
  }) {
    return _then(
      _$LoginModelImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        statusCode: null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginModelImpl implements _LoginModel {
  const _$LoginModelImpl({
    required this.message,
    required this.statusCode,
    required this.status,
  });

  factory _$LoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModelImplFromJson(json);

  @override
  final String message;
  @override
  final int statusCode;
  @override
  final String status;

  @override
  String toString() {
    return 'LoginModel(message: $message, statusCode: $statusCode, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, status);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      __$$LoginModelImplCopyWithImpl<_$LoginModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModelImplToJson(this);
  }
}

abstract class _LoginModel implements LoginModel {
  const factory _LoginModel({
    required final String message,
    required final int statusCode,
    required final String status,
  }) = _$LoginModelImpl;

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$LoginModelImpl.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  String get status;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
