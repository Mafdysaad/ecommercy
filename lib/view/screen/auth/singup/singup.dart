import 'dart:math';

import 'package:country_code_text_field/country_code_text_field.dart';
import 'package:country_code_text_field/phone_number.dart';
import 'package:ecommerce/controller/auth_controller/login_controller.dart';
import 'package:ecommerce/controller/auth_controller/singup_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/constant/lottieasset.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/cuntrycod_textfiled.dart';
import 'package:ecommerce/view/widget/auth/customform.dart';
import 'package:ecommerce/view/widget/auth/customformpassword.dart';
import 'package:ecommerce/view/widget/auth/customlogo.dart';
import 'package:ecommerce/view/widget/auth/customoption.dart';
import 'package:ecommerce/view/widget/auth/customsprator.dart';

import 'package:ecommerce/view/widget/auth/custonsinup.dart';
import 'package:ecommerce/view/widget/singup/Logo_sinup.dart';
import 'package:ecommerce/view/widget/singup/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widget/auth/custombutton.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(implament_singup_controler());
    return Scaffold(
        appBar: AppBar(
          title: Text('16'.tr),
          centerTitle: true,
        ),
        body: GetBuilder<implament_singup_controler>(
          builder: (controller) => HandlingDataRequst(
            statusrequst: controller.statusrequst,
            widget: Form(
              key: controller.formkey,
              child: ListView(
                children: [
                  const Logo_sinup(path: 'assets/images/singup.png'),
                  customfiled(
                      title: '33'.tr,
                      hint: '34'.tr,
                      validator: (val) {
                        return validInput(val!, 30, 5, 'username');
                      },
                      texteditngcontroller: controller.username,
                      suffixicon: const Icon(
                        fill: 1,
                        Icons.person_2_sharp,
                        size: 28,
                      ),
                      autovalidatemode: AutovalidateMode.onUserInteraction),
                  customfiled(
                      title: '35'.tr,
                      hint: '36'.tr,
                      validator: (val) {
                        return validInput(val!, 30, 5, 'email');
                      },
                      texteditngcontroller: controller.email,
                      suffixicon: const Icon(
                        fill: 1,
                        Icons.email_outlined,
                        size: 28,
                      ),
                      autovalidatemode: AutovalidateMode.onUserInteraction),
                  Country_CodeText_Field(
                    title: '37'.tr,
                    hint: '38'.tr,
                    texteditngcontroller: controller.phone,
                    suffixicon: const Icon(
                      fill: 1,
                      Icons.phone_android,
                      size: 28,
                    ),
                  ),
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
                      return validInput(val!, 14, 8, 'confirmpassword_singup',
                          combering: controller.password.text);
                    },
                    texteditngcontroller: controller.confirmpassword,
                    autovalidatemode: AutovalidateMode.onUserInteraction,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Custom_butom_singup(
                          title: '43'.tr,
                          function: controller.savedata,
                        ),
                        Custom_butom_singup(
                            title: '44'.tr, function: controller.back_to_login)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
