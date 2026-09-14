import 'package:whisper/features/sign_up/domain/model/sign_up_request_model.dart';
import 'package:whisper/features/sign_up/domain/model/sign_up_response_model.dart';

abstract class SignUpRepository {
  Future<SignUpResponseModel> signUp(SignUpRequestModel request);
}
