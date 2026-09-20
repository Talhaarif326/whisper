part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({@Default([]) List<dynamic> contacts}) =
      _ContactState;
}
