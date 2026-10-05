abstract class ContactRepository {
  /// Watches the contacts available to the current user.
  Stream<List<dynamic>> fetchContacts();
}
