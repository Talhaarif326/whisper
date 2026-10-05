abstract class SettingRepository {
  /// Ends the current user's authenticated session.
  Future<void> logOut();

  /// Enables or disables notifications for the current user.
  Future<void> notificationsEnabledOrDisabled(bool enabled);
}
