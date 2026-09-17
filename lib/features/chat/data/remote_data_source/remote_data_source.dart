import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

class RemoteDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> sendMessage(MessageSendingModel message) async {
    await firebaseFirestore.collection('messages').add({
      'message': message.message,
      'timestamp': FieldValue.serverTimestamp(),
    });
    print("Message sent: ${message.message}");
  }

  Stream<List<MessageResponseModel>> fetchMessages() {
    final response = firebaseFirestore
        .collection('messages')
        .orderBy("timestamp", descending: true)
        .snapshots();
    final messages = response.map(
      (snapshot) => snapshot.docs
          .map((doc) => MessageResponseModel.fromJson(doc.data()))
          .toList(),
    );
    print(messages);
    return messages;
  }
}
