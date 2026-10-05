abstract interface class ChatNotificationDataSource {
  /// Delivers a notification for a message to the intended recipient.
  Future<void> notifyRecipient({
    required String recipientId,
    required String senderName,
    required String message,
    required String chatRoomId,
  });
}
