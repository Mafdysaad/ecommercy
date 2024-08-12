import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/auth/login.dart';
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
  TextEditingController password = TextEditingController();
  bool obsec = true;
  GlobalKey<FormState> formkey = GlobalKey();
  Statusrequst statusrequst = Statusrequst.none;
  Login_data login_data = Login_data(Get.put(crud()));
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
  savedata() async {
    if (formkey.currentState!.validate()) {
      statusrequst = Statusrequst.loading;
      update();
      var respons = await login_data.login_data(email.text, password.text);
      statusrequst = handlingdata(respons);
      if (statusrequst == Statusrequst.success) {
        if (respons['status'] == 'success') {
          Get.offNamed(Approutes.homepage);
        } else {
          Get.defaultDialog(
              title: 'error', middleText: 'wrong email or password');
        }
      } else {
        
        return Statusrequst.oflinefailure;
      }
    } else {
      print('notokay');
    }
    update();
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
