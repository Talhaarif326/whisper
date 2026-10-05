import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/contacts/domain/contacts_domain_barrel.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository repository;

  /// Loads contacts from the repository and keeps state updated as they change.
  ContactBloc(this.repository) : super(ContactState()) {
    on<ContactEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        onFetchedContacts: (e) async {
          final contacts = repository.fetchContacts();
          await emit.forEach(
            contacts,
            onData: (contactList) {
              return state.copyWith(contacts: contactList);
            },
          );
        },
      );
    });
  }
}
