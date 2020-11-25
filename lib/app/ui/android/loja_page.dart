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
            'Nome Loja',
            style: TextStyle(color: Colors.black54),
          )),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.height * 0.02),
                child: Text(
                  'Categorias',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Row(
                    children: [
                      Categorias(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Bebidas',
                      ),
                      Categorias(
                        size: size,
                        text: 'Congelados',
                      ),
                      Categorias(
                        size: size,
                        text: 'Bebidas',
                      ),
                      Categorias(
                        size: size,
                        text: 'Congelados',
                      ),
                      Categorias(
                        size: size,
                        text: 'Limpeza',
                      ),
                      Categorias(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Bebê',
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
                  'Promoções',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Row(
                    children: [
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
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
                  'Sugestões',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Row(
                    children: [
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
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
                  'Produtos de higiene',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Row(
                    children: [
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                      Produtos(
                        size: size,
                        icon: Icons.local_drink,
                        text: 'Coca-cola 2L retornavel',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Produtos extends StatelessWidget {
  const Produtos({
    Key key,
    @required this.size,
    this.icon,
    this.text,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.28,
            height: size.height * 0.18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            width: size.width * 0.28,
            child: Text(
              'Nome produto e pequena descrição',
              style: TextStyle(),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            width: size.width * 0.18,
            child: Text(
              '  R\$ 5.80',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class Categorias extends StatelessWidget {
  const Categorias({
    Key key,
    @required this.size,
    this.icon,
    this.text,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Text(
            text,
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
