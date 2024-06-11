import 'package:ecommerce/controller/auth_controller/otp_controller.dart';
import 'package:ecommerce/controller/auth_controller/otp_singup_cintroller.dart';
import 'package:ecommerce/controller/auth_controller/resatpassword_controller.dart';
import 'package:ecommerce/controller/auth_controller/singup_controller.dart';

import 'package:ecommerce/core/constant/customoutlineInput.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/customhead.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/custompragraph.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Otp_singup extends GetView<Implament_Otpsinup_controller> {
  const Otp_singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('22'.tr),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Custompragraph(
            contant: '23'.tr,
          ),
          Customhead(
            contant: '24'.tr,
          ),
          OtpTextField(
            showFieldAsBox: true,
            margin: const EdgeInsets.only(top: 10, bottom: 40),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            fieldHeight: 70,
            fieldWidth: 60,
            textStyle: const TextStyle(fontSize: 34, height: 1),
            numberOfFields: 5,
            onSubmit: (value) => controller.go_to_success(),
          ),
        ],
      ),
    );
  }
}
