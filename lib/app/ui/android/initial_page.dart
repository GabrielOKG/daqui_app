import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:splashscreen/splashscreen.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        SplashScreen(
          loaderColor: Colors.transparent,
          seconds: 3,
          navigateAfterSeconds: Routes.HOME,
        ),
        Container(
            margin: EdgeInsets.only(
                left: size.width * 0.17, top: size.height * 0.22),
            child: Shimmer.fromColors(
                baseColor: kprimarycolor,
                highlightColor: kprimarycolor.withOpacity(0.5),
                child: Image.asset(
                  'assets/logo.png',
                  scale: 1.5,
                ))),
        Container(
            margin: EdgeInsets.only(
                left: size.width * 0.15, top: size.height * 0.42),
            child: Shimmer.fromColors(
              baseColor: kprimarycolor,
              highlightColor: kprimarycolor.withOpacity(0.5),
              child: Text(
                'Daqui App',
                style: TextStyle(
                    color: Color.fromRGBO(248, 127, 6, 1),
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ))
      ]),
    );
  }
}
