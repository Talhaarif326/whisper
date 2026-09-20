import 'package:whisper/features/contacts/data/remote_data_source/contact_remote_data_source.dart';
import 'package:whisper/features/contacts/domain/repository/contact_repository.dart';

class ContactRepositoryImp implements ContactRepository {
  final ContactRemoteDataSource remoteDataSource;

  ContactRepositoryImp(this.remoteDataSource);

  @override
  Stream<List<dynamic>> fetchContacts() {
    return remoteDataSource.fetchContacts();
  }
}
