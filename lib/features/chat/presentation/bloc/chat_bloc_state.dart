part of 'chat_bloc_bloc.dart';

@freezed
class ChatBlocState with _$ChatBlocState {
  const factory ChatBlocState({
    @Default([]) List<MessageResponseModel> messages,
    @Default(false) bool isLoading,
    @Default("") String errorMessage,
    @Default('') String messageChanged,
  }) = _ChatBlocState;
}
