import 'package:daqui_app/app/routes/app_pages.dart';
import 'package:daqui_app/app/routes/app_routes.dart';
import 'package:daqui_app/app/ui/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    getPages: AppPages.routes,
    initialRoute: Routes.INITIAL,
  ));
}
