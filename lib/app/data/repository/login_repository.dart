import 'package:daqui_app/app/data/model/user_model.dart';
import 'package:daqui_app/app/data/provider/login_provider.dart';
import 'package:meta/meta.dart';

class LoginRepository {
  final LoginApiClient apiClient;

  LoginRepository({this.apiClient}) : assert(apiClient != null);

  Future<UserModel> createUserWithEmailAndPassword(
      String email, String password, String nome) {
    return apiClient.createUserWithEmailAndPassword(email, password, nome);
  }

  Future<UserModel> signInWithEmailAndPassword(String email, String password) {
    return apiClient.signInWithEmailAndPassword(email, password);
  }
}
