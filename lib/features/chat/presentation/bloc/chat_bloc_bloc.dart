import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/chat/domain/chat_domain_barrel.dart';

part 'chat_bloc_event.dart';
part 'chat_bloc_state.dart';
part 'chat_bloc_bloc.freezed.dart';

class ChatBlocBloc extends Bloc<ChatBlocEvent, ChatBlocState> {
  /// Coordinates chat UI events with the domain repository.
  ChatBlocBloc({required this.repository}) : super(ChatBlocState()) {
    on<ChatBlocEvent>((event, emit) async {
      await event.map(
        started: (e) {},

        // Keep the draft field state in sync with user input.
        onMessageChanged: (e) {
          emit(state.copyWith(messageChanged: e.messageChanged));
        },

        // Send the composed message through the repository.
        sendMessage: (e) async {
          await repository.sendMessage(e.message);
        },

        // Subscribe to conversation updates and expose loading or error state.
        getMessages: (e) async {
          emit(state.copyWith(isLoading: true));

          await emit
              .forEach<List<MessageResponseModel>>(
                repository.getMessages(),
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

  final ChatRepository repository;
}
