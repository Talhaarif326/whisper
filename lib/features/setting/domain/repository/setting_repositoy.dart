abstract class SettingRepository {
  // Future<void> updateNotificationsEnabled(bool enabled);
  Future<void> logOut();
  Future<void> notificationsEnabledOrDisabled(bool enabled);
}
