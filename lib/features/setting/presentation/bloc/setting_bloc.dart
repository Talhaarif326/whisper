import 'package:whisper/core/presentation/presentation_barrel.dart';
import 'package:whisper/features/setting/domain/setting_domain_barrel.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final SettingRepository repository;

  /// Applies settings actions and reflects their outcomes in UI state.
  SettingBloc(this.repository) : super(SettingState()) {
    on<SettingEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        // Complete sign-out and mark the state for navigation feedback.
        logOut: (e) async {
          await repository.logOut();
          emit(state.copyWith(isLoggingOut: true));
        },
        // Persist the notification choice before updating visible state.
        enableOrDisableNotifications: (e) async {
          await repository.notificationsEnabledOrDisabled(e.enabled);

          emit(state.copyWith(notificationsEnabled: e.enabled));
        },
      );
    });
  }
}
