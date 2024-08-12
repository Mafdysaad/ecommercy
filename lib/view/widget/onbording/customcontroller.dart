import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class Customdotonbording extends StatelessWidget {
  const Customdotonbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Implament_onbording_controler());
    return GetBuilder<Implament_onbording_controler>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onbordinglist.length,
                    (index) => AnimatedContainer(
                          duration: const Duration(microseconds: 900),
                          width: controller.currentpage == index ? 12 : 6,
                          height: 6,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                        )),
              ],
            ));
  }
}
