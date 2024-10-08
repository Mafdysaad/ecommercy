import 'package:ecommerce/controller/reset_password/otp_controller.dart';
import 'package:ecommerce/controller/auth_controller/otp_singup_cintroller.dart';
import 'package:ecommerce/controller/auth_controller/singup_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/statusrequst.dart';

import 'package:ecommerce/core/constant/customoutlineInput.dart';
import 'package:ecommerce/core/constant/lottieasset.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/customhead.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/custompragraph.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Otp_singup extends StatelessWidget {
  const Otp_singup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Implament_Otpsinup_controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('22'.tr),
        centerTitle: true,
      ),
      body: GetBuilder<Implament_Otpsinup_controller>(
          builder: (controller) => HandlingDataRequst(
              statusrequst: controller.statusrequst,
              widget: ListView(
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
                    onSubmit: (String value) => controller.go_to_success(value),
                  ),
                ],
              ))),
    );
  }
}
