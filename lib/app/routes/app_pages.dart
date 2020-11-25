import 'package:daqui_app/app/bindings/login_binding.dart';
import 'package:daqui_app/app/bindings/loja_binding.dart';
import 'package:daqui_app/app/ui/android/home_page.dart';
import 'package:daqui_app/app/ui/android/initial_page.dart';
import 'package:daqui_app/app/ui/android/login_page.dart';
import 'package:daqui_app/app/ui/android/loja_page.dart';
import 'package:daqui_app/app/ui/android/register_page.dart';
import 'package:get/get.dart';
import 'package:daqui_app/app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => InitialPage()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterPage(),
        binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: LojaBinding()),
    GetPage(name: Routes.LOJA, page: () => LojaPage(), binding: LojaBinding()),
  ];
}
