// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MessageSendingModel message) sendMessage,
    required TResult Function(String messageChanged) onMessageChanged,
    required TResult Function() getMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MessageSendingModel message)? sendMessage,
    TResult? Function(String messageChanged)? onMessageChanged,
    TResult? Function()? getMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MessageSendingModel message)? sendMessage,
    TResult Function(String messageChanged)? onMessageChanged,
    TResult Function()? getMessages,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_GetMessages value) getMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_GetMessages value)? getMessages,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_GetMessages value)? getMessages,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBlocEventCopyWith<$Res> {
  factory $ChatBlocEventCopyWith(
    ChatBlocEvent value,
    $Res Function(ChatBlocEvent) then,
  ) = _$ChatBlocEventCopyWithImpl<$Res, ChatBlocEvent>;
}

/// @nodoc
class _$ChatBlocEventCopyWithImpl<$Res, $Val extends ChatBlocEvent>
    implements $ChatBlocEventCopyWith<$Res> {
  _$ChatBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBlocEvent
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
    extends _$ChatBlocEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatBlocEvent.started()';
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
    required TResult Function(MessageSendingModel message) sendMessage,
    required TResult Function(String messageChanged) onMessageChanged,
    required TResult Function() getMessages,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MessageSendingModel message)? sendMessage,
    TResult? Function(String messageChanged)? onMessageChanged,
    TResult? Function()? getMessages,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MessageSendingModel message)? sendMessage,
    TResult Function(String messageChanged)? onMessageChanged,
    TResult Function()? getMessages,
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
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_GetMessages value) getMessages,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_GetMessages value)? getMessages,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_GetMessages value)? getMessages,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatBlocEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
    _$SendMessageImpl value,
    $Res Function(_$SendMessageImpl) then,
  ) = __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageSendingModel message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
    _$SendMessageImpl _value,
    $Res Function(_$SendMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SendMessageImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as MessageSendingModel,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.message);

  @override
  final MessageSendingModel message;

  @override
  String toString() {
    return 'ChatBlocEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MessageSendingModel message) sendMessage,
    required TResult Function(String messageChanged) onMessageChanged,
    required TResult Function() getMessages,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MessageSendingModel message)? sendMessage,
    TResult? Function(String messageChanged)? onMessageChanged,
    TResult? Function()? getMessages,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MessageSendingModel message)? sendMessage,
    TResult Function(String messageChanged)? onMessageChanged,
    TResult Function()? getMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_GetMessages value) getMessages,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_GetMessages value)? getMessages,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_GetMessages value)? getMessages,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatBlocEvent {
  const factory _SendMessage(final MessageSendingModel message) =
      _$SendMessageImpl;

  MessageSendingModel get message;

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMessageChangedImplCopyWith<$Res> {
  factory _$$OnMessageChangedImplCopyWith(
    _$OnMessageChangedImpl value,
    $Res Function(_$OnMessageChangedImpl) then,
  ) = __$$OnMessageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageChanged});
}

/// @nodoc
class __$$OnMessageChangedImplCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$OnMessageChangedImpl>
    implements _$$OnMessageChangedImplCopyWith<$Res> {
  __$$OnMessageChangedImplCopyWithImpl(
    _$OnMessageChangedImpl _value,
    $Res Function(_$OnMessageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messageChanged = null}) {
    return _then(
      _$OnMessageChangedImpl(
        null == messageChanged
            ? _value.messageChanged
            : messageChanged // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OnMessageChangedImpl implements _OnMessageChanged {
  const _$OnMessageChangedImpl(this.messageChanged);

  @override
  final String messageChanged;

  @override
  String toString() {
    return 'ChatBlocEvent.onMessageChanged(messageChanged: $messageChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageChangedImpl &&
            (identical(other.messageChanged, messageChanged) ||
                other.messageChanged == messageChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageChanged);

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageChangedImplCopyWith<_$OnMessageChangedImpl> get copyWith =>
      __$$OnMessageChangedImplCopyWithImpl<_$OnMessageChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MessageSendingModel message) sendMessage,
    required TResult Function(String messageChanged) onMessageChanged,
    required TResult Function() getMessages,
  }) {
    return onMessageChanged(messageChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MessageSendingModel message)? sendMessage,
    TResult? Function(String messageChanged)? onMessageChanged,
    TResult? Function()? getMessages,
  }) {
    return onMessageChanged?.call(messageChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MessageSendingModel message)? sendMessage,
    TResult Function(String messageChanged)? onMessageChanged,
    TResult Function()? getMessages,
    required TResult orElse(),
  }) {
    if (onMessageChanged != null) {
      return onMessageChanged(messageChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_GetMessages value) getMessages,
  }) {
    return onMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_GetMessages value)? getMessages,
  }) {
    return onMessageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_GetMessages value)? getMessages,
    required TResult orElse(),
  }) {
    if (onMessageChanged != null) {
      return onMessageChanged(this);
    }
    return orElse();
  }
}

abstract class _OnMessageChanged implements ChatBlocEvent {
  const factory _OnMessageChanged(final String messageChanged) =
      _$OnMessageChangedImpl;

  String get messageChanged;

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnMessageChangedImplCopyWith<_$OnMessageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
    _$GetMessagesImpl value,
    $Res Function(_$GetMessagesImpl) then,
  ) = __$$GetMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$ChatBlocEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
    _$GetMessagesImpl _value,
    $Res Function(_$GetMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl();

  @override
  String toString() {
    return 'ChatBlocEvent.getMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MessageSendingModel message) sendMessage,
    required TResult Function(String messageChanged) onMessageChanged,
    required TResult Function() getMessages,
  }) {
    return getMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MessageSendingModel message)? sendMessage,
    TResult? Function(String messageChanged)? onMessageChanged,
    TResult? Function()? getMessages,
  }) {
    return getMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MessageSendingModel message)? sendMessage,
    TResult Function(String messageChanged)? onMessageChanged,
    TResult Function()? getMessages,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_OnMessageChanged value) onMessageChanged,
    required TResult Function(_GetMessages value) getMessages,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_OnMessageChanged value)? onMessageChanged,
    TResult? Function(_GetMessages value)? getMessages,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_OnMessageChanged value)? onMessageChanged,
    TResult Function(_GetMessages value)? getMessages,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatBlocEvent {
  const factory _GetMessages() = _$GetMessagesImpl;
}

/// @nodoc
mixin _$ChatBlocState {
  List<MessageResponseModel> get messages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get messageChanged => throw _privateConstructorUsedError;

  /// Create a copy of ChatBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBlocStateCopyWith<ChatBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBlocStateCopyWith<$Res> {
  factory $ChatBlocStateCopyWith(
    ChatBlocState value,
    $Res Function(ChatBlocState) then,
  ) = _$ChatBlocStateCopyWithImpl<$Res, ChatBlocState>;
  @useResult
  $Res call({
    List<MessageResponseModel> messages,
    bool isLoading,
    String errorMessage,
    String messageChanged,
  });
}

/// @nodoc
class _$ChatBlocStateCopyWithImpl<$Res, $Val extends ChatBlocState>
    implements $ChatBlocStateCopyWith<$Res> {
  _$ChatBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? messageChanged = null,
  }) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<MessageResponseModel>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            messageChanged: null == messageChanged
                ? _value.messageChanged
                : messageChanged // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatBlocStateImplCopyWith<$Res>
    implements $ChatBlocStateCopyWith<$Res> {
  factory _$$ChatBlocStateImplCopyWith(
    _$ChatBlocStateImpl value,
    $Res Function(_$ChatBlocStateImpl) then,
  ) = __$$ChatBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<MessageResponseModel> messages,
    bool isLoading,
    String errorMessage,
    String messageChanged,
  });
}

/// @nodoc
class __$$ChatBlocStateImplCopyWithImpl<$Res>
    extends _$ChatBlocStateCopyWithImpl<$Res, _$ChatBlocStateImpl>
    implements _$$ChatBlocStateImplCopyWith<$Res> {
  __$$ChatBlocStateImplCopyWithImpl(
    _$ChatBlocStateImpl _value,
    $Res Function(_$ChatBlocStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? messageChanged = null,
  }) {
    return _then(
      _$ChatBlocStateImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<MessageResponseModel>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        messageChanged: null == messageChanged
            ? _value.messageChanged
            : messageChanged // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChatBlocStateImpl implements _ChatBlocState {
  const _$ChatBlocStateImpl({
    final List<MessageResponseModel> messages = const [],
    this.isLoading = false,
    this.errorMessage = "",
    this.messageChanged = '',
  }) : _messages = messages;

  final List<MessageResponseModel> _messages;
  @override
  @JsonKey()
  List<MessageResponseModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String messageChanged;

  @override
  String toString() {
    return 'ChatBlocState(messages: $messages, isLoading: $isLoading, errorMessage: $errorMessage, messageChanged: $messageChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatBlocStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.messageChanged, messageChanged) ||
                other.messageChanged == messageChanged));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messages),
    isLoading,
    errorMessage,
    messageChanged,
  );

  /// Create a copy of ChatBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBlocStateImplCopyWith<_$ChatBlocStateImpl> get copyWith =>
      __$$ChatBlocStateImplCopyWithImpl<_$ChatBlocStateImpl>(this, _$identity);
}

abstract class _ChatBlocState implements ChatBlocState {
  const factory _ChatBlocState({
    final List<MessageResponseModel> messages,
    final bool isLoading,
    final String errorMessage,
    final String messageChanged,
  }) = _$ChatBlocStateImpl;

  @override
  List<MessageResponseModel> get messages;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  String get messageChanged;

  /// Create a copy of ChatBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBlocStateImplCopyWith<_$ChatBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
