abstract class SettingRepository {
  /// Ends the current user's authenticated session.
  Future<void> logOut();

  /// Returns whether the current user's notification token is stored.
  Future<bool> notificationsEnabled();

  /// Updates the current user's notification preference and returns its result.
  Future<bool> notificationsEnabledOrDisabled(bool enabled);
}
