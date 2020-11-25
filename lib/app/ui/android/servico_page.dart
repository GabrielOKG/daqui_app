import 'package:daqui_app/app/controller/loja_controller.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicoPage extends GetView<LojaController> {
  LojaController _loja = Get.find<LojaController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: size.height * 0.08,
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 3,
            )
          ], color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                color: kprimarycolor,
                size: 30,
              ),
              Icon(Icons.search, color: kprimarycolor, size: 30),
              Icon(Icons.receipt, color: kprimarycolor, size: 30),
              Icon(Icons.settings, color: kprimarycolor, size: 30),
            ],
          ),
        ),
      ),
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
            'Cabelereira Leira',
            style: TextStyle(color: Colors.black54),
          )),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Promo(
                        size: size,
                        img: 'cabelo.png',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.height * 0.02),
                child: Text(
                  'Agende seu horario',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.065,
                    vertical: size.height * 0.02),
                child: Horarios(
                  size: size,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Promo extends StatelessWidget {
  const Promo({
    Key key,
    @required this.size,
    this.img,
  }) : super(key: key);

  final Size size;

  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      child: Column(
        children: [
          Container(
              width: size.width,
              height: size.height * 0.28,
              child: Image.asset('assets/$img')),
        ],
      ),
    );
  }
}

class Horarios extends StatelessWidget {
  const Horarios({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: Column(
            children: [
              Container(
                width: size.width * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
// 8:30 as 11:00
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '8:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '9:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '9:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '10:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '10:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '11:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
// 11:30 as 16:00
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: Column(
            children: [
              Container(
                width: size.width * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '11:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '14:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '14:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '15:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '15:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '16:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
// 16:30 as 19:00
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: Column(
            children: [
              Container(
                width: size.width * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '16:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '17:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '17:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '18:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '18:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '19:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
// 19:30 as 19:00
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: Column(
            children: [
              Container(
                width: size.width * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '19:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.green,
                      text: '20:00',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '20:30',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: Column(
            children: [
              Container(
                width: size.width * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                    HorariosTiles(
                      size: size,
                      cor: Colors.grey,
                      text: '--:--',
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HorariosTiles extends StatelessWidget {
  const HorariosTiles({
    Key key,
    @required this.size,
    this.cor,
    this.text,
  }) : super(key: key);

  final Size size;
  final Color cor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      child: Column(
        children: [
          Container(
            width: size.width * 0.2,
            height: size.height * 0.05,
            decoration: BoxDecoration(
              color: cor,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
