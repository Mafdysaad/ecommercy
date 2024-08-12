import 'package:ecommerce/controller/auth_controller/login_controller.dart';

import 'package:ecommerce/controller/reset_password/resatpassword_controller.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Success_resatpassword extends StatelessWidget {
  const Success_resatpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Implament_Resatepassword());
    return Scaffold(
        appBar: AppBar(
          title: Text('31'.tr),
          centerTitle: true,
        ),
        body: GetBuilder<Implament_Resatepassword>(
          builder: (controller) => Column(
            children: [
              const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 200,
                ),
              ),
              const Spacer(),
              Custombutton(function: controller.backtologin, tiltle: '32'.tr),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}
