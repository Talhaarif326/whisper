import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_response_model.freezed.dart';
part 'message_response_model.g.dart';

@freezed
abstract class MessageResponseModel with _$MessageResponseModel {
  const factory MessageResponseModel({
    required String message,
    required String? senderName,
    required bool isMine,
    required DateTime timestamp,
  }) = _MessageResponseModel;

  factory MessageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseModelFromJson(json);
}
