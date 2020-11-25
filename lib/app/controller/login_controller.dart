import 'package:daqui_app/app/data/model/user_model.dart';
import 'package:daqui_app/app/data/repository/login_repository.dart';
import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final LoginRepository repository = LoginRepository();

  final TextEditingController emailTextingController = TextEditingController();
  final TextEditingController passwordTextingController =
      TextEditingController();
  final TextEditingController nameTextingController = TextEditingController();
  final TextEditingController lastnameTextingController =
      TextEditingController();
  // GetStorage box = GetStorage('daqui_app');

  void register() async {
    // Get.dialog(
    //     Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //     barrierDismissible: false);

    UserModel user = await repository.createUserWithEmailAndPassword(
      emailTextingController.text,
      passwordTextingController.text,
      nameTextingController.text,
    );

    if (user != null) {
      // box.write("auth", user);
      Get.offAllNamed(Routes.HOME, arguments: user);
    }
  }

  void login() async {
    Get.dialog(
        Center(
          child: CircularProgressIndicator(),
        ),
        barrierDismissible: false);
    UserModel user = await repository.signInWithEmailAndPassword(
        emailTextingController.text, passwordTextingController.text);
    if (user != null) {
      Get.offAllNamed(Routes.HOME, arguments: user);
    }
  }
}
