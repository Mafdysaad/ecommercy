import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/auth/otp_data.dart';
import 'package:ecommerce/view/screen/auth/singup/success_sinup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Otp_controller extends GetxController {
  go_to_success(String verify);
  String? email;
  Statusrequst statusrequst = Statusrequst.none;
  Otp_data verifycode = Otp_data(Get.put(crud()));
}

class Implament_Otpsinup_controller extends Otp_controller {
  @override
  go_to_success(String verify) async {
    //becouse data loading from server
    statusrequst = Statusrequst.loading;
    update();
    //to recive respons from database
    print('33333333333333333$email');
    print('33333333333333333$verify');
    var respons = await verifycode.verify_code(email!, verify);
    // check if the statusrequst is data or statusrequst
    // if statusrequst == Statusrequst.Success that be we have data
    statusrequst = handlingdata(respons);
    if (statusrequst == Statusrequst.success) {
      if (respons['status'] == 'success') {
        Get.offAllNamed(Approutes.Success_singup);
        print('========== done');
      } else {
        Get.defaultDialog(title: 'error', middleText: 'Invalid OTP Code');
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['user_email'];
    super.onInit();
  }
}
