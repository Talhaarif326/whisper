import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisper/features/setting/data/repository/setting_repository_impl.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final SettingRepositoryImpl _settingRepositoryImpl;
  SettingBloc(this._settingRepositoryImpl) : super(SettingState()) {
    on<SettingEvent>((event, emit) async {
      await event.map(
        started: (e) {},
        logOut: (e) async {
          await _settingRepositoryImpl.logOut();
          emit(state.copyWith(isLoggingOut: true));
        },
      );
    });
  }
}
