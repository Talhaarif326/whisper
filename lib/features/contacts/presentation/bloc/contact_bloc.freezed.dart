// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onFetchedContacts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onFetchedContacts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onFetchedContacts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchContacts value) onFetchedContacts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchContacts value)? onFetchedContacts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchContacts value)? onFetchedContacts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEventCopyWith<$Res> {
  factory $ContactEventCopyWith(
    ContactEvent value,
    $Res Function(ContactEvent) then,
  ) = _$ContactEventCopyWithImpl<$Res, ContactEvent>;
}

/// @nodoc
class _$ContactEventCopyWithImpl<$Res, $Val extends ContactEvent>
    implements $ContactEventCopyWith<$Res> {
  _$ContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactEvent
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
    extends _$ContactEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ContactEvent.started()';
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
    required TResult Function() onFetchedContacts,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onFetchedContacts,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onFetchedContacts,
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
    required TResult Function(_FetchContacts value) onFetchedContacts,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchContacts value)? onFetchedContacts,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchContacts value)? onFetchedContacts,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ContactEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchContactsImplCopyWith<$Res> {
  factory _$$FetchContactsImplCopyWith(
    _$FetchContactsImpl value,
    $Res Function(_$FetchContactsImpl) then,
  ) = __$$FetchContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchContactsImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$FetchContactsImpl>
    implements _$$FetchContactsImplCopyWith<$Res> {
  __$$FetchContactsImplCopyWithImpl(
    _$FetchContactsImpl _value,
    $Res Function(_$FetchContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchContactsImpl implements _FetchContacts {
  const _$FetchContactsImpl();

  @override
  String toString() {
    return 'ContactEvent.onFetchedContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onFetchedContacts,
  }) {
    return onFetchedContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onFetchedContacts,
  }) {
    return onFetchedContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onFetchedContacts,
    required TResult orElse(),
  }) {
    if (onFetchedContacts != null) {
      return onFetchedContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchContacts value) onFetchedContacts,
  }) {
    return onFetchedContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchContacts value)? onFetchedContacts,
  }) {
    return onFetchedContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchContacts value)? onFetchedContacts,
    required TResult orElse(),
  }) {
    if (onFetchedContacts != null) {
      return onFetchedContacts(this);
    }
    return orElse();
  }
}

abstract class _FetchContacts implements ContactEvent {
  const factory _FetchContacts() = _$FetchContactsImpl;
}

/// @nodoc
mixin _$ContactState {
  List<dynamic> get contacts => throw _privateConstructorUsedError;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
    ContactState value,
    $Res Function(ContactState) then,
  ) = _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call({List<dynamic> contacts});
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contacts = null}) {
    return _then(
      _value.copyWith(
            contacts: null == contacts
                ? _value.contacts
                : contacts // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactStateImplCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$ContactStateImplCopyWith(
    _$ContactStateImpl value,
    $Res Function(_$ContactStateImpl) then,
  ) = __$$ContactStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> contacts});
}

/// @nodoc
class __$$ContactStateImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ContactStateImpl>
    implements _$$ContactStateImplCopyWith<$Res> {
  __$$ContactStateImplCopyWithImpl(
    _$ContactStateImpl _value,
    $Res Function(_$ContactStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contacts = null}) {
    return _then(
      _$ContactStateImpl(
        contacts: null == contacts
            ? _value._contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$ContactStateImpl implements _ContactState {
  const _$ContactStateImpl({final List<dynamic> contacts = const []})
    : _contacts = contacts;

  final List<dynamic> _contacts;
  @override
  @JsonKey()
  List<dynamic> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactState(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      __$$ContactStateImplCopyWithImpl<_$ContactStateImpl>(this, _$identity);
}

abstract class _ContactState implements ContactState {
  const factory _ContactState({final List<dynamic> contacts}) =
      _$ContactStateImpl;

  @override
  List<dynamic> get contacts;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
