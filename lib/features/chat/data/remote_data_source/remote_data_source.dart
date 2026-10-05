import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

abstract interface class ChatRemoteDataSource {
  /// Stores a message in the remote conversation.
  Future<void> sendMessage(MessageSendingModel message);

  /// Watches remote conversation updates as domain message objects.
  Stream<List<MessageResponseModel>> fetchMessages();
}
