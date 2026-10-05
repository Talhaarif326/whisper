import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

abstract class ChatRepository {
  /// Sends a message to the current conversation.
  Future<void> sendMessage(MessageSendingModel message);

  /// Watches messages in the current conversation.
  Stream<List<MessageResponseModel>> getMessages();
}
