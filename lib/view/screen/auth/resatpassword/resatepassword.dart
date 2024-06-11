import 'package:ecommerce/controller/auth_controller/resatpassword_controller.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';
import 'package:ecommerce/view/widget/auth/customform.dart';
import 'package:ecommerce/view/widget/auth/customformpassword.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/customhead.dart';
import 'package:ecommerce/view/widget/auth/resatepassword/custompragraph.dart';

import 'package:ecommerce/view/widget/singup/custombutton.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Resatepassword extends GetView<Implament_Resatepassword> {
  const Resatepassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('25'.tr),
        centerTitle: true,
      ),
      body: Form(
        key: controller.formkey,
        child: ListView(
          children: [
            Custompragraph(contant: '26'.tr),
            Customhead(contant: '45'.tr),
            customfiled(
                title: '35'.tr,
                hint: '36'.tr,
                validator: (val) {
                  return validInput(val!, 30, 8, 'email');
                },
                texteditngcontroller: controller.email,
                suffixicon: const Icon(
                  fill: 1,
                  Icons.email_outlined,
                  size: 28,
                ),
                autovalidatemode: AutovalidateMode.onUserInteraction),
            custofildpass(
                title: '39'.tr,
                hint: '40'.tr,
                validator: (val) {
                  return validInput(val!, 14, 8, 'password');
                },
                texteditngcontroller: controller.password,
                autovalidatemode: AutovalidateMode.onUserInteraction),
            custofildpass(
                title: '41'.tr,
                hint: '42'.tr,
                validator: (val) {
                  return validInput(val!, 14, 8, 'confirmpassword_resat');
                },
                texteditngcontroller: controller.confirmpassword,
                autovalidatemode: AutovalidateMode.onUserInteraction),
            Custombutton(
              function: controller.savedata,
              tiltle: '43'.tr,
            ),
          ],
        ),
      ),
    );
  }
}
