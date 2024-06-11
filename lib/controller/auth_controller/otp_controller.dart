import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Otp_controller extends GetxController {
  gotoresatepassword();
}

class Implament_Otp_controller extends Otp_controller {
  late TextEditingController email;
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  gotoresatepassword() {
    Get.offNamed(Approutes.resatepassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
