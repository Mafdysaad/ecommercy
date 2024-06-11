import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombutton extends GetView<Implament_onbording_controler> {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      width: double.infinity,
      height: 60,
      child: MaterialButton(
        shape: Theme.of(context).buttonTheme.shape,
        onPressed: () {
          controller.next();
        },
        color: Colors.amber,
        child: Text(
          '15'.tr,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
