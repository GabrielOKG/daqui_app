import 'package:daqui_app/app/data/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginApiClient {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//Retorna usuario logado
  Stream<UserModel> get onAuthStateChanged => _firebaseAuth
      .authStateChanges()
      .map((User currentUser) => UserModel.fromSnapshot(currentUser));
//Cria usuario
  Future<UserModel> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final currentUser = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      // atualizando nome usuario
      await currentUser.updateProfile(displayName: name);
      await currentUser.reload();
      return UserModel.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
      return null;
    }
  }

// Login
  Future<UserModel> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final currentUser = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      return UserModel.fromSnapshot(currentUser);
    } catch (e) {
      print(e);
      return null;
    }
  }
// Logout

  signOut() {
    return _firebaseAuth.signOut();
  }
}
