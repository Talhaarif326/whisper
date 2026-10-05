import 'package:whisper/features/contacts/data/remote_data_source/contact_remote_data_source.dart';
import 'package:whisper/features/contacts/domain/repository/contact_repository.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactRemoteDataSource remoteDataSource;

  ContactRepositoryImpl(this.remoteDataSource);

  /// Exposes the remote contact stream through the domain repository.
  @override
  Stream<List<dynamic>> fetchContacts() {
    return remoteDataSource.fetchContacts();
  }
}
