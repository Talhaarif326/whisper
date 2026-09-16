// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
    SignUpEvent value,
    $Res Function(SignUpEvent) then,
  ) = _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SignUpEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignUpEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$OnNameChangedImplCopyWith<$Res> {
  factory _$$OnNameChangedImplCopyWith(
    _$OnNameChangedImpl value,
    $Res Function(_$OnNameChangedImpl) then,
  ) = __$$OnNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$OnNameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$OnNameChangedImpl>
    implements _$$OnNameChangedImplCopyWith<$Res> {
  __$$OnNameChangedImplCopyWithImpl(
    _$OnNameChangedImpl _value,
    $Res Function(_$OnNameChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$OnNameChangedImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnNameChangedImpl implements _OnNameChanged {
  const _$OnNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignUpEvent.onNameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNameChangedImplCopyWith<_$OnNameChangedImpl> get copyWith =>
      __$$OnNameChangedImplCopyWithImpl<_$OnNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) {
    return onNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) {
    return onNameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(this);
    }
    return orElse();
  }
}

abstract class _OnNameChanged implements SignUpEvent {
  const factory _OnNameChanged(final String name) = _$OnNameChangedImpl;

  String get name;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNameChangedImplCopyWith<_$OnNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEmailChangedImplCopyWith<$Res> {
  factory _$$OnEmailChangedImplCopyWith(
    _$OnEmailChangedImpl value,
    $Res Function(_$OnEmailChangedImpl) then,
  ) = __$$OnEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnEmailChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$OnEmailChangedImpl>
    implements _$$OnEmailChangedImplCopyWith<$Res> {
  __$$OnEmailChangedImplCopyWithImpl(
    _$OnEmailChangedImpl _value,
    $Res Function(_$OnEmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$OnEmailChangedImpl(
        null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnEmailChangedImpl implements _OnEmailChanged {
  const _$OnEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.onEmailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      __$$OnEmailChangedImplCopyWithImpl<_$OnEmailChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) {
    return onEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) {
    return onEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEmailChanged implements SignUpEvent {
  const factory _OnEmailChanged(final String email) = _$OnEmailChangedImpl;

  String get email;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnEmailChangedImplCopyWith<_$OnEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPasswordChangedImplCopyWith<$Res> {
  factory _$$OnPasswordChangedImplCopyWith(
    _$OnPasswordChangedImpl value,
    $Res Function(_$OnPasswordChangedImpl) then,
  ) = __$$OnPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OnPasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$OnPasswordChangedImpl>
    implements _$$OnPasswordChangedImplCopyWith<$Res> {
  __$$OnPasswordChangedImplCopyWithImpl(
    _$OnPasswordChangedImpl _value,
    $Res Function(_$OnPasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$OnPasswordChangedImpl(
        null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnPasswordChangedImpl implements _OnPasswordChanged {
  const _$OnPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.onPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPasswordChangedImplCopyWith<_$OnPasswordChangedImpl> get copyWith =>
      __$$OnPasswordChangedImplCopyWithImpl<_$OnPasswordChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) {
    return onPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) {
    return onPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPasswordChanged implements SignUpEvent {
  const factory _OnPasswordChanged(final String password) =
      _$OnPasswordChangedImpl;

  String get password;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPasswordChangedImplCopyWith<_$OnPasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$OnConfirmPasswordChangedImplCopyWith(
    _$OnConfirmPasswordChangedImpl value,
    $Res Function(_$OnConfirmPasswordChangedImpl) then,
  ) = __$$OnConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$OnConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$OnConfirmPasswordChangedImpl>
    implements _$$OnConfirmPasswordChangedImplCopyWith<$Res> {
  __$$OnConfirmPasswordChangedImplCopyWithImpl(
    _$OnConfirmPasswordChangedImpl _value,
    $Res Function(_$OnConfirmPasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? confirmPassword = null}) {
    return _then(
      _$OnConfirmPasswordChangedImpl(
        null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnConfirmPasswordChangedImpl implements _OnConfirmPasswordChanged {
  const _$OnConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.onConfirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnConfirmPasswordChangedImplCopyWith<_$OnConfirmPasswordChangedImpl>
  get copyWith =>
      __$$OnConfirmPasswordChangedImplCopyWithImpl<
        _$OnConfirmPasswordChangedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) {
    return onConfirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) {
    return onConfirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) {
    if (onConfirmPasswordChanged != null) {
      return onConfirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onConfirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onConfirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onConfirmPasswordChanged != null) {
      return onConfirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnConfirmPasswordChanged implements SignUpEvent {
  const factory _OnConfirmPasswordChanged(final String confirmPassword) =
      _$OnConfirmPasswordChangedImpl;

  String get confirmPassword;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnConfirmPasswordChangedImplCopyWith<_$OnConfirmPasswordChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignUpImplCopyWith<$Res> {
  factory _$$OnSignUpImplCopyWith(
    _$OnSignUpImpl value,
    $Res Function(_$OnSignUpImpl) then,
  ) = __$$OnSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpRequestModel request});
}

/// @nodoc
class __$$OnSignUpImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$OnSignUpImpl>
    implements _$$OnSignUpImplCopyWith<$Res> {
  __$$OnSignUpImplCopyWithImpl(
    _$OnSignUpImpl _value,
    $Res Function(_$OnSignUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? request = null}) {
    return _then(
      _$OnSignUpImpl(
        null == request
            ? _value.request
            : request // ignore: cast_nullable_to_non_nullable
                  as SignUpRequestModel,
      ),
    );
  }
}

/// @nodoc

class _$OnSignUpImpl implements _OnSignUp {
  const _$OnSignUpImpl(this.request);

  @override
  final SignUpRequestModel request;

  @override
  String toString() {
    return 'SignUpEvent.onSignUp(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSignUpImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSignUpImplCopyWith<_$OnSignUpImpl> get copyWith =>
      __$$OnSignUpImplCopyWithImpl<_$OnSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) onNameChanged,
    required TResult Function(String email) onEmailChanged,
    required TResult Function(String password) onPasswordChanged,
    required TResult Function(String confirmPassword) onConfirmPasswordChanged,
    required TResult Function(SignUpRequestModel request) onSignUp,
  }) {
    return onSignUp(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? onNameChanged,
    TResult? Function(String email)? onEmailChanged,
    TResult? Function(String password)? onPasswordChanged,
    TResult? Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult? Function(SignUpRequestModel request)? onSignUp,
  }) {
    return onSignUp?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? onNameChanged,
    TResult Function(String email)? onEmailChanged,
    TResult Function(String password)? onPasswordChanged,
    TResult Function(String confirmPassword)? onConfirmPasswordChanged,
    TResult Function(SignUpRequestModel request)? onSignUp,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnConfirmPasswordChanged value)
    onConfirmPasswordChanged,
    required TResult Function(_OnSignUp value) onSignUp,
  }) {
    return onSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_OnNameChanged value)? onNameChanged,
    TResult? Function(_OnEmailChanged value)? onEmailChanged,
    TResult? Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult? Function(_OnConfirmPasswordChanged value)?
    onConfirmPasswordChanged,
    TResult? Function(_OnSignUp value)? onSignUp,
  }) {
    return onSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnConfirmPasswordChanged value)? onConfirmPasswordChanged,
    TResult Function(_OnSignUp value)? onSignUp,
    required TResult orElse(),
  }) {
    if (onSignUp != null) {
      return onSignUp(this);
    }
    return orElse();
  }
}

abstract class _OnSignUp implements SignUpEvent {
  const factory _OnSignUp(final SignUpRequestModel request) = _$OnSignUpImpl;

  SignUpRequestModel get request;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSignUpImplCopyWith<_$OnSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  SignUpResponseModel get signUpResponse => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
    SignUpState value,
    $Res Function(SignUpState) then,
  ) = _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({
    String name,
    String email,
    String password,
    String confirmPassword,
    String error,
    String uid,
    SignUpResponseModel signUpResponse,
  });

  $SignUpResponseModelCopyWith<$Res> get signUpResponse;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? error = null,
    Object? uid = null,
    Object? signUpResponse = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            confirmPassword: null == confirmPassword
                ? _value.confirmPassword
                : confirmPassword // ignore: cast_nullable_to_non_nullable
                      as String,
            error: null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String,
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            signUpResponse: null == signUpResponse
                ? _value.signUpResponse
                : signUpResponse // ignore: cast_nullable_to_non_nullable
                      as SignUpResponseModel,
          )
          as $Val,
    );
  }

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignUpResponseModelCopyWith<$Res> get signUpResponse {
    return $SignUpResponseModelCopyWith<$Res>(_value.signUpResponse, (value) {
      return _then(_value.copyWith(signUpResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
    _$SignUpStateImpl value,
    $Res Function(_$SignUpStateImpl) then,
  ) = __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String email,
    String password,
    String confirmPassword,
    String error,
    String uid,
    SignUpResponseModel signUpResponse,
  });

  @override
  $SignUpResponseModelCopyWith<$Res> get signUpResponse;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
    _$SignUpStateImpl _value,
    $Res Function(_$SignUpStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? error = null,
    Object? uid = null,
    Object? signUpResponse = null,
  }) {
    return _then(
      _$SignUpStateImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        signUpResponse: null == signUpResponse
            ? _value.signUpResponse
            : signUpResponse // ignore: cast_nullable_to_non_nullable
                  as SignUpResponseModel,
      ),
    );
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl({
    this.name = "",
    this.email = "",
    this.password = "",
    this.confirmPassword = "",
    this.error = "",
    this.uid = '',
    this.signUpResponse = const SignUpResponseModel(
      email: "",
      message: 'Initial state',
      uid: '',
    ),
  });

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final SignUpResponseModel signUpResponse;

  @override
  String toString() {
    return 'SignUpState(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, error: $error, uid: $uid, signUpResponse: $signUpResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    email,
    password,
    confirmPassword,
    error,
    uid,
    signUpResponse,
  );

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState({
    final String name,
    final String email,
    final String password,
    final String confirmPassword,
    final String error,
    final String uid,
    final SignUpResponseModel signUpResponse,
  }) = _$SignUpStateImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get error;
  @override
  String get uid;
  @override
  SignUpResponseModel get signUpResponse;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
