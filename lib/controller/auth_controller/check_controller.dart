import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Check_controller extends GetxController {
  goto_verify_eamil();
  savedata();
}

class Implament_Check_controller extends Check_controller {
  late TextEditingController email;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  savedata() {
    if (formkey.currentState!.validate()) {
      Get.offNamed(Approutes.otp);
    } else {
      print('notokay');
    }
  }

  @override
  goto_verify_eamil() {
    Get.offNamed(Approutes.Verify_email);
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
