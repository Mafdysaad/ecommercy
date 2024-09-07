import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/resetpassword/checke_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Check_controller extends GetxController {
  savedata();
}

class Implament_Check_controller extends Check_controller {
  late TextEditingController email;
  GlobalKey<FormState> formkey = GlobalKey();
  Statusrequst statusrequst = Statusrequst.none;
  checke_email checke = checke_email(Get.put(crud()));

  @override
  savedata() async {
    if (formkey.currentState!.validate()) {
      statusrequst = Statusrequst.loading;
      update();
      var respons = await checke.checke(email.text);
      statusrequst = handlingdata(respons);
      if (statusrequst == Statusrequst.success) {
        if (respons['status'] == 'success') {
          Get.offNamed(Approutes.otp, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: 'error', middleText: 'The email is Not exist');
        }
      } else {
        return Statusrequst.failure;
      }
    } else {
      print('notokay');
    }
    update();
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
