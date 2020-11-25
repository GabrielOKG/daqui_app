import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
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
                Icons.shopping_bag,
                color: kprimarycolor,
                size: 36,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.024, vertical: size.height * 0.015),
            child: Text(
              'Segmentos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Segmentos(
                    size: size,
                    img: 'assets/hortifruti.jpg',
                    text: 'Hortifruti'),
                Segmentos(
                    size: size, img: 'assets/mercado.jpg', text: 'Mercearia'),
                Segmentos(
                    size: size, img: 'assets/farmacia.jpg', text: 'Farmacia'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.024, vertical: size.height * 0.015),
            child: Text('Lojas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          ),
          //TODO Lojas tiles
        ],
      )),
    );
  }

  Container lojaTiles(Size size) {
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
            child: Image.asset('assets/logo.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Burguer King - Capim Dourado',
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
                  Text(' 4.6 (69)',
                      style: TextStyle(color: Colors.black.withOpacity(0.6))),
                  Text(
                    '  ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.lock_clock,
                    size: 14,
                  ),
                  Text(' 25min',
                      style: TextStyle(color: Colors.black.withOpacity(0.6))),
                  Text('  '),
                  Text('Mercearia', style: TextStyle(color: kprimarycolor)),
                ],
              ),
              SizedBox(height: size.height * 0.008),
              Text(
                'Entrega gratis',
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
      width: size.width * 0.3,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.3,
            height: size.height * 0.12,
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
