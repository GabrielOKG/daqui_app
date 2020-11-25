import 'package:daqui_app/app/controller/loja_controller.dart';
import 'package:get/get.dart';

class LojaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LojaController>(() => LojaController());
  }
}
