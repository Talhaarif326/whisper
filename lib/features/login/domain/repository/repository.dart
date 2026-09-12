import 'package:whisper/features/login/domain/model/login_model.dart';

abstract class LoginRepository {
  Future<LoginModel> login(String email, String password);
}
