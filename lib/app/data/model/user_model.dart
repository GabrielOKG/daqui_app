import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String id;
  String name;
  String email;
  String sobrenome;
  String urlImg;
  UserModel({this.id, this.name, this.email, this.urlImg, this.sobrenome});

  UserModel.fromSnapshot(User currentUser)
      : id = currentUser.uid,
        name = currentUser.displayName,
        email = currentUser.email,
        urlImg = currentUser.photoURL;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lastname': sobrenome,
      'email': email,
      'urlImg': urlImg,
    };
  }
}
