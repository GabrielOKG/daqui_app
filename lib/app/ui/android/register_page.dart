import 'package:daqui_app/app/controller/login_controller.dart';
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
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: kprimarycolor,
            ),
            SizedBox(
              width: 136,
            ),
            Text(
              'Login',
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.05, bottom: size.height * 0.01),
              width: size.width * 0.8,
              child: TextFormField(
                controller: _loginController.emailTextingController,
                validator: (value) {},
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
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
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Senha',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.height * 0.01),
              width: size.width * 0.9,
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
                  Text(
                    ' Criar conta',
                    style: TextStyle(color: Colors.blue[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
