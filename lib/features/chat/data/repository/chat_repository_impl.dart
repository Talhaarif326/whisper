import 'package:whisper/features/chat/data/remote_data_source/remote_data_source.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';
import 'package:whisper/features/chat/domain/repository/chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  ChatRepositoryImpl(this._remoteDataSource);

  final ChatRemoteDataSource _remoteDataSource;

  /// Returns the live message stream supplied by the remote data source.
  @override
  Stream<List<MessageResponseModel>> getMessages() {
    return _remoteDataSource.fetchMessages();
  }

  /// Forwards a message to the configured remote data source.
  @override
  Future<void> sendMessage(MessageSendingModel message) async {
    await _remoteDataSource.sendMessage(message);
  }
}
