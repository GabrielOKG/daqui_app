import 'package:daqui_app/app/routes/app_pages.dart';
import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    getPages: AppPages.routes,
    initialRoute: Routes.INITIAL,
  ));
}
