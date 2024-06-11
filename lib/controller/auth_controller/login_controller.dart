import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Login_controll extends GetxController {
  gotosingpage();
  changeobsec();
  gotoforgetpassword();

  savedata();
}

class Implament_login_controler extends Login_controll {
  TextEditingController email = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController password = TextEditingController();
  bool obsec = true;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  gotosingpage() {
    Get.toNamed(Approutes.singup);
  }

  @override
  changeobsec() {
    obsec = !obsec;
    update();
  }

  @override
  savedata() {
    if (formkey.currentState!.validate()) {
      print('okeay');
    } else {
      print('notokay');
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpassword() {
    Get.offNamed(Approutes.send_otp);
  }
}
