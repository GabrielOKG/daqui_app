import 'package:get/get.dart';

class LojaController extends GetxController {
  final _obj = 0.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
