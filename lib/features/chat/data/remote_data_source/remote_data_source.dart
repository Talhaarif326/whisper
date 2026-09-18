import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whisper/features/chat/domain/model/message_response_model.dart';
import 'package:whisper/features/chat/domain/model/messege_sending_model.dart';

class RemoteDataSource {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> sendMessage(MessageSendingModel message) async {
    try {
      await firebaseFirestore.collection('messages').add({
        'message': message.message,
        'isMine': FirebaseAuth.instance.currentUser!.uid,
        'timestamp': DateTime.now(),
      });
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Stream<List<MessageResponseModel>> fetchMessages() {
    try {
      final response = firebaseFirestore
          .collection('messages')
          .orderBy("timestamp", descending: true)
          .snapshots();
      return response.map(
        (snapshot) => snapshot.docs.map((doc) {
          final data = doc.data();
          final timestamp = data['timestamp'];

          final isMine = data['isMine'];

          if (timestamp is Timestamp) {
            data['timestamp'] = timestamp.toDate().toIso8601String();
          }
          if (isMine != FirebaseAuth.instance.currentUser!.uid) {
            data['isMine'] = false;
          } else {
            data['isMine'] = true;
          }

          return MessageResponseModel.fromJson(data);
        }).toList(),
      );
    } on Exception catch (e) {
      print(e.toString());
      rethrow;
    } catch (e) {
      throw Exception("Failed to fetch messages. ${e.toString()}");
    }
  }
}
