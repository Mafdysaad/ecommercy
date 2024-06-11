import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Singup extends GetxController {
  back_to_login();

  savedata();
}

class implament_singup_controler extends Singup {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  back_to_login() {
    Get.offAllNamed(Approutes.login);
  }

  @override
  savedata() {
    if (formkey.currentState!.validate()) {
      Get.offAllNamed(Approutes.Otp_singup);
    } else {
      print('notokay');
    }
  }

  @override
  void dispose() {
    email.dispose();
    phone.dispose();
    password.dispose();
    confirmpassword.dispose();
    username.dispose();
    super.dispose();
  }
}
