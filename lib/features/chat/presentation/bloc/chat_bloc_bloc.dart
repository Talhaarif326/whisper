import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisper/features/chat/data/repository/chat_repository_impl.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

part 'chat_bloc_event.dart';
part 'chat_bloc_state.dart';
part 'chat_bloc_bloc.freezed.dart';

class ChatBlocBloc extends Bloc<ChatBlocEvent, ChatBlocState> {
  final ChatRepositoryImpl _chatRepositoryImpl;
  ChatBlocBloc({required this._chatRepositoryImpl}) : super(ChatBlocState()) {
    on<ChatBlocEvent>((event, emit) async {
      await event.map(
        started: (e) {},

        onMessageChanged: (e) {
          emit(state.copyWith(messageChanged: e.messageChanged));
        },

        sendMessage: (e) async {
          await _chatRepositoryImpl.sendMessage(e.message);
        },

        getMessages: (e) async {
          emit(state.copyWith(isLoading: true));

          await emit
              .forEach<List<MessageResponseModel>>(
                _chatRepositoryImpl.getMessages(),
                onData: (messageList) {
                  return state.copyWith(
                    isLoading: false,
                    messages: messageList,
                  );
                },
              )
              .onError((error, _) {
                print(error);
                emit(
                  state.copyWith(
                    isLoading: false,
                    errorMessage: error.toString(),
                  ),
                );
              });
        },
      );
    });
  }
}
