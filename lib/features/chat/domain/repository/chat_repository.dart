import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

abstract class ChatRepository {
  Future<void> sendMessage(MessageSendingModel message);
  Stream<List<MessageResponseModel>> getMessages();
}
