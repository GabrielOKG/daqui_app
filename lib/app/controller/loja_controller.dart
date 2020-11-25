import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LojaController extends GetxController {
  PageController pageTile = PageController(initialPage: 0);

  final _obj = 0.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
