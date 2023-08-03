import 'package:betweener/api/api.dart';
import 'package:betweener/utilis/constants.dart';

import '../models/user_model.dart';

class Auth {
  Future<User?> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    Map<String, dynamic> data = await Api().post(url: kRegisterUrl, body: {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': confirmPassword
    });
    print(data);
    return User.fromJson(data);
  }
}
