import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class ContactRemoteDataSource {
  Stream<List<dynamic>> fetchContacts() {
    try {
      final FirebaseDatabase database = FirebaseDatabase.instance;
      return database.ref().child("users").onValue.map((event) {
        if (event.snapshot.value == null) {
          print("No contacts found ${event.snapshot.value}");
          return [];
        }
        final data = event.snapshot.value as Map<Object?, Object?>;
        return data.values.toList();
      });
    } on FirebaseException catch (e) {
      print("Error fetching contacts: ${e.toString()}");
      throw Exception("Error fetching contacts");
    } catch (e) {
      print("Unexpected error: $e");
      throw Exception("Unexpected error occurred");
    }
  }
}
