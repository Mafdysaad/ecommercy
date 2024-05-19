import 'package:ecommerce/core/localization/changlocal.dart';
import 'package:ecommerce/view/widget/language/customboutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languge extends GetView<Localcontroller> {
  const Languge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Expanded(
              flex: 2,
              child: Icon(
                Icons.language_sharp,
                size: 250,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 1,
                child: Text(
                  '1'.tr,
                  style: TextStyle(
                      fontSize:
                          Get.deviceLocale!.languageCode == 'en' ? 20 : 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.lightBlue[900]),
                )),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 80),
                alignment: Alignment.center,
                child: const Custombouttonlan(title: 'ar'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  alignment: Alignment.center,
                  child: const Custombouttonlan(title: 'en')),
            ),
          ],
        ),
      ),
    );
  }
}
