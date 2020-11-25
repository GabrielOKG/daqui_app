import 'package:daqui_app/app/controller/login_controller.dart';
import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
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
          'Cadastro',
          style: TextStyle(color: Colors.black45),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.8,
                child: TextFormField(
                  controller: _loginController.nameTextingController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo obrigatório.";
                    }
                    return null;
                  },
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: 'Nome',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
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
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
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
              SizedBox(
                height: size.height * 0.03,
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _loginController.register();
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
                      'Cadastrar',
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
                    horizontal: size.width * 0.2, vertical: size.height * 0.04),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //TODO
                      },
                      child: Text(
                        'Ao clicar em cadastrar você concorda com nossos termos de uso',
                        style: TextStyle(color: Colors.blue[600]),
                        textAlign: TextAlign.center,
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
