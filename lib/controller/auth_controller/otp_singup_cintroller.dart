import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Otp_controller extends GetxController {
  gotoresatepassword();
  go_to_success();
}

class Implament_Otpsinup_controller extends Otp_controller {
  late TextEditingController email;
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  gotoresatepassword() {
    Get.offNamed(Approutes.resatepassword);
  }

  @override
  go_to_success() {
    Get.offAllNamed(Approutes.Success_singup);
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
