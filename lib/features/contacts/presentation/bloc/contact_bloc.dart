import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisper/features/contacts/data/repository/contact_repository_imp.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepositoryImp _contactRepositoryImp;
  ContactBloc(this._contactRepositoryImp) : super(ContactState()) {
    on<ContactEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        onFetchedContacts: (e) async {
          final contacts = _contactRepositoryImp.fetchContacts();
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
