import 'package:daqui_app/app/data/model/user_model.dart';
import 'package:daqui_app/app/data/provider/login_provider.dart';

class LoginRepository {
  final LoginApiClient apiClient = LoginApiClient();

  Future<UserModel> createUserWithEmailAndPassword(
      String email, String password, String nome) {
    return apiClient.createUserWithEmailAndPassword(email, password, nome);
  }

  Future<UserModel> signInWithEmailAndPassword(String email, String password) {
    return apiClient.signInWithEmailAndPassword(email, password);
  }
}
