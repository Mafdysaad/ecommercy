import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/auth/singup.dart';
import 'package:ecommerce/view/screen/auth/singup/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Singup extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  Singup_data singup_data = Singup_data(Get.put(crud()));
  Statusrequst statusrequst = Statusrequst.none;
  back_to_login();

  savedata();
}

class implament_singup_controler extends Singup {
  @override
  back_to_login() {
    Get.offAllNamed(Approutes.login);
  }

  @override
  savedata() async {
    if (formkey.currentState!.validate()) {
      statusrequst = Statusrequst.loading;
      update();
      var respons = await singup_data.postdata(
          email.text, username.text, phone.text, password.text);
      statusrequst = handlingdata(respons);
      if (statusrequst == Statusrequst.success) {
        if (respons['status'] == 'success') {
          print('----------->>done');
          Get.offNamed(Approutes.Otp_singup,
              arguments: {"user_email": email.text});
        } else {
          Get.defaultDialog(title: 'error', middleText: 'the email is exect');
          statusrequst = Statusrequst.failure;
        }
        update();
      } else {}
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
}
