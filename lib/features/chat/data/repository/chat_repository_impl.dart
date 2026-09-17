import 'package:whisper/features/chat/data/remote_data_source/remote_data_source.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';
import 'package:whisper/features/chat/domain/repository/chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  final RemoteDataSource _remoteDatasource;
  ChatRepositoryImpl(this._remoteDatasource);

  @override
  Stream<List<MessageResponseModel>> getMessages() {
    return _remoteDatasource.fetchMessages();
  }

  @override
  Future<void> sendMessage(MessageSendingModel message) async {
    await _remoteDatasource.sendMessage(message);
  }
}
