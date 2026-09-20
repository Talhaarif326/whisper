part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.started() = _Started;
  const factory ContactEvent.onFetchedContacts() = _FetchContacts;
}
