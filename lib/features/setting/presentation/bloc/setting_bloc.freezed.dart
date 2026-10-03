// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logOut,
    required TResult Function(bool enabled) enableOrDisableNotifications,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logOut,
    TResult? Function(bool enabled)? enableOrDisableNotifications,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logOut,
    TResult Function(bool enabled)? enableOrDisableNotifications,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_EnableOrDisableNotifications value)
    enableOrDisableNotifications,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
    SettingEvent value,
    $Res Function(SettingEvent) then,
  ) = _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingEvent
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
    extends _$SettingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SettingEvent.started()';
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
    required TResult Function() logOut,
    required TResult Function(bool enabled) enableOrDisableNotifications,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logOut,
    TResult? Function(bool enabled)? enableOrDisableNotifications,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logOut,
    TResult Function(bool enabled)? enableOrDisableNotifications,
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
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_EnableOrDisableNotifications value)
    enableOrDisableNotifications,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
    _$LogOutImpl value,
    $Res Function(_$LogOutImpl) then,
  ) = __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
    _$LogOutImpl _value,
    $Res Function(_$LogOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'SettingEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logOut,
    required TResult Function(bool enabled) enableOrDisableNotifications,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logOut,
    TResult? Function(bool enabled)? enableOrDisableNotifications,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logOut,
    TResult Function(bool enabled)? enableOrDisableNotifications,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_EnableOrDisableNotifications value)
    enableOrDisableNotifications,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements SettingEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$EnableOrDisableNotificationsImplCopyWith<$Res> {
  factory _$$EnableOrDisableNotificationsImplCopyWith(
    _$EnableOrDisableNotificationsImpl value,
    $Res Function(_$EnableOrDisableNotificationsImpl) then,
  ) = __$$EnableOrDisableNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$EnableOrDisableNotificationsImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$EnableOrDisableNotificationsImpl>
    implements _$$EnableOrDisableNotificationsImplCopyWith<$Res> {
  __$$EnableOrDisableNotificationsImplCopyWithImpl(
    _$EnableOrDisableNotificationsImpl _value,
    $Res Function(_$EnableOrDisableNotificationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? enabled = null}) {
    return _then(
      _$EnableOrDisableNotificationsImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$EnableOrDisableNotificationsImpl
    implements _EnableOrDisableNotifications {
  const _$EnableOrDisableNotificationsImpl({required this.enabled});

  @override
  final bool enabled;

  @override
  String toString() {
    return 'SettingEvent.enableOrDisableNotifications(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnableOrDisableNotificationsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnableOrDisableNotificationsImplCopyWith<
    _$EnableOrDisableNotificationsImpl
  >
  get copyWith =>
      __$$EnableOrDisableNotificationsImplCopyWithImpl<
        _$EnableOrDisableNotificationsImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logOut,
    required TResult Function(bool enabled) enableOrDisableNotifications,
  }) {
    return enableOrDisableNotifications(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? logOut,
    TResult? Function(bool enabled)? enableOrDisableNotifications,
  }) {
    return enableOrDisableNotifications?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logOut,
    TResult Function(bool enabled)? enableOrDisableNotifications,
    required TResult orElse(),
  }) {
    if (enableOrDisableNotifications != null) {
      return enableOrDisableNotifications(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_EnableOrDisableNotifications value)
    enableOrDisableNotifications,
  }) {
    return enableOrDisableNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
  }) {
    return enableOrDisableNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_EnableOrDisableNotifications value)?
    enableOrDisableNotifications,
    required TResult orElse(),
  }) {
    if (enableOrDisableNotifications != null) {
      return enableOrDisableNotifications(this);
    }
    return orElse();
  }
}

abstract class _EnableOrDisableNotifications implements SettingEvent {
  const factory _EnableOrDisableNotifications({required final bool enabled}) =
      _$EnableOrDisableNotificationsImpl;

  bool get enabled;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnableOrDisableNotificationsImplCopyWith<
    _$EnableOrDisableNotificationsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  bool get isLoggingOut => throw _privateConstructorUsedError;
  bool get notificationsEnabled => throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
    SettingState value,
    $Res Function(SettingState) then,
  ) = _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({bool isLoggingOut, bool notificationsEnabled});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggingOut = null,
    Object? notificationsEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            isLoggingOut: null == isLoggingOut
                ? _value.isLoggingOut
                : isLoggingOut // ignore: cast_nullable_to_non_nullable
                      as bool,
            notificationsEnabled: null == notificationsEnabled
                ? _value.notificationsEnabled
                : notificationsEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
    _$SettingStateImpl value,
    $Res Function(_$SettingStateImpl) then,
  ) = __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggingOut, bool notificationsEnabled});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
    _$SettingStateImpl _value,
    $Res Function(_$SettingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggingOut = null,
    Object? notificationsEnabled = null,
  }) {
    return _then(
      _$SettingStateImpl(
        isLoggingOut: null == isLoggingOut
            ? _value.isLoggingOut
            : isLoggingOut // ignore: cast_nullable_to_non_nullable
                  as bool,
        notificationsEnabled: null == notificationsEnabled
            ? _value.notificationsEnabled
            : notificationsEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl({
    this.isLoggingOut = false,
    this.notificationsEnabled = false,
  });

  @override
  @JsonKey()
  final bool isLoggingOut;
  @override
  @JsonKey()
  final bool notificationsEnabled;

  @override
  String toString() {
    return 'SettingState(isLoggingOut: $isLoggingOut, notificationsEnabled: $notificationsEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.isLoggingOut, isLoggingOut) ||
                other.isLoggingOut == isLoggingOut) &&
            (identical(other.notificationsEnabled, notificationsEnabled) ||
                other.notificationsEnabled == notificationsEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoggingOut, notificationsEnabled);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({
    final bool isLoggingOut,
    final bool notificationsEnabled,
  }) = _$SettingStateImpl;

  @override
  bool get isLoggingOut;
  @override
  bool get notificationsEnabled;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
