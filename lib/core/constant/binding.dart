import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:ecommerce/core/localization/changlocal.dart';
import 'package:get/get.dart';

class Mybinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Implament_onbording_controler());
  }
}
