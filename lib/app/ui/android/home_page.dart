import 'package:daqui_app/app/controller/loja_controller.dart';
import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:daqui_app/app/ui/android/widgets/lojas.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomePage extends GetView<LojaController> {
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
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.15,
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            Column(
              children: [
                Text('Endereço de Entrega',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 14)),
                Text('Av Leonardo de A. 679 , Vila Nova',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 13)),
              ],
            ),
            Container(
              child: Icon(
                Icons.menu,
                color: kprimarycolor,
                size: 36,
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: lojas.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _loja.obj = index;
                    Get.toNamed(Routes.LOJA);
                  },
                  child: lojatiles(size,
                      img: lojas[index]['img'],
                      title: lojas[index]['title'],
                      rate: lojas[index]['rate'],
                      frete: lojas[index]['frete'],
                      tempo: lojas[index]['tempo'],
                      categoria: lojas[index]['categoria']),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container lojatiles(Size size,
      {String img,
      String title,
      String frete,
      String rate,
      String tempo,
      String categoria}) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.024, vertical: size.height * 0.005),
      width: size.width * 0.99,
      height: size.height * 0.13,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
            ),
            width: size.width * 0.2,
            height: size.height * 0.1,
            // child: Image.asset('assets/temp/$img'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: size.height * 0.008),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
                  Text(rate,
                      style: TextStyle(color: Colors.black.withOpacity(0.6))),
                  Text(
                    '  ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.lock_clock,
                    size: 14,
                  ),
                  Text(tempo,
                      style: TextStyle(color: Colors.black.withOpacity(0.6))),
                  Text('  '),
                  Text(categoria, style: TextStyle(color: kprimarycolor)),
                ],
              ),
              SizedBox(height: size.height * 0.008),
              Text(
                '$frete',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Segmentos extends StatelessWidget {
  const Segmentos({
    Key key,
    @required this.size,
    this.img,
    this.text,
  }) : super(key: key);

  final Size size;
  final String img;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.2,
            height: size.height * 0.08,
            color: Colors.grey,
            child: Image.asset(img),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                color: Colors.orange,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
