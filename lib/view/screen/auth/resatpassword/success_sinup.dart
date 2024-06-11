import 'package:ecommerce/controller/auth_controller/singup_controller.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Success_singup extends GetView<implament_singup_controler> {
  const Success_singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('27'.tr),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('46'.tr,
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            Text('47'.tr, style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            Custombutton(function: controller.back_to_login, tiltle: '32'.tr),
            const SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
