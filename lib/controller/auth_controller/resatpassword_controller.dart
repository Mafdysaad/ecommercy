import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Resatpassword_controller extends GetxController {
  checkemail();
  gotoresatepassword();

  backtologin();
  changeobsec();

  savedata();
}

class Implament_Resatepassword extends Resatpassword_controller {
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController confirmpassword;

  bool obsec = true;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  checkemail() {
    Get.toNamed(Approutes.resatepassword);
  }

  @override
  changeobsec() {
    obsec = !obsec;
    update();
  }

  @override
  savedata() {
    if (formkey.currentState!.validate()) {
      Get.offNamed(Approutes.Success_resatpassword);
    } else {
      print('notokay');
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    phone.dispose();
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }

  @override
  backtologin() {
    Get.offAllNamed(Approutes.login);
    Get.delete<Implament_Resatepassword>();
  }

  @override
  gotoresatepassword() {
    Get.toNamed(Approutes.resatepassword);
  }
}
