import 'package:daqui_app/app/controller/login_controller.dart';
import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.find<LoginController>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: kprimarycolor,
            ),
          ),
          elevation: 0,
          title: Text(
            'Login',
            style: TextStyle(color: Colors.black45),
          )),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.05, bottom: size.height * 0.01),
                width: size.width * 0.8,
                child: TextFormField(
                  controller: _loginController.emailTextingController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo obrigatório.";
                    } else if (!GetUtils.isEmail(value)) {
                      return "Campo requer um E-mail válido.";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: size.height * 0.01),
                width: size.width * 0.8,
                child: TextFormField(
                  controller: _loginController.passwordTextingController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo obrigatório.";
                    } else if (value.length < 6) {
                      return "Campo requer mínimo 6 caracteres.";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Senha',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _loginController.login();
                  }
                },
                child: Container(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      color: kprimarycolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: size.height * 0.02),
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.2, vertical: size.height * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Não possui uma conta?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        ' Criar conta',
                        style: TextStyle(color: Colors.blue[600]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
