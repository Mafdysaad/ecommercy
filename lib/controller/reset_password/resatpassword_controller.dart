import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/resetpassword/reset_password.dart';
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
  late TextEditingController password;
  late TextEditingController confirmpassword;
  GlobalKey<FormState> formkey = GlobalKey();
  String? email;

  Statusrequst? statusrequst;
  ChangePassword checke = ChangePassword(Get.put(crud()));

  bool obsec = true;

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
  savedata() async {
    if (formkey.currentState!.validate()) {
      var respons = await checke.updatpassword(password.text, email!);
      statusrequst = handlingdata(respons);
      if (statusrequst == Statusrequst.success) {
        if (respons['status'] == 'success') {
          Get.offNamed(Approutes.Success_resatpassword,
              arguments: {"email": email});
        }
      }
      update();
    }
  }

  @override
  void dispose() {
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

  @override
  void onInit() {
    email = Get.arguments["email"];
    password = TextEditingController();
    confirmpassword = TextEditingController();
    super.onInit();
  }

  @override
  void disposeId(Object id) {
    password.dispose();
    confirmpassword.dispose();
    super.disposeId(id);
  }
}
