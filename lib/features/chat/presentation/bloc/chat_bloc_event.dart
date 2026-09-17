part of 'chat_bloc_bloc.dart';

@freezed
class ChatBlocEvent with _$ChatBlocEvent {
  const factory ChatBlocEvent.started() = _Started;
  const factory ChatBlocEvent.sendMessage(MessageSendingModel message) =
      _SendMessage;
  const factory ChatBlocEvent.onMessageChanged(String messageChanged) =
      _OnMessageChanged;
  const factory ChatBlocEvent.getMessages() = _GetMessages;
}
