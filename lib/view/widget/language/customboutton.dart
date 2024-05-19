import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/localization/changlocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombouttonlan extends GetView<Localcontroller> {
  final String title;
  const Custombouttonlan({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(10),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: 300,
      elevation: 25,
      onPressed: () {
        controller.changlang(title);
        Get.toNamed(Approutes.onbording);
      },
      color: Appcolor.praimarycolor,
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
