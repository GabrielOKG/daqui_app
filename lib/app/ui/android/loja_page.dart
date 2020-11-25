import 'package:daqui_app/app/controller/loja_controller.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LojaPage extends GetView<LojaController> {
  LojaController _loja = Get.find<LojaController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: kprimarycolor,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Nome Loja',
            style: TextStyle(color: Colors.black54),
          )),
      body: Scaffold(
          body: Column(
        children: [
          SafeArea(
              child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.height * 0.02),
            child: Text(
              'Categorias',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ))
        ],
      )),
    );
  }
}
