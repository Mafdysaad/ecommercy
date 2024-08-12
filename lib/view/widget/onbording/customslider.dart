import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onbording_controller.dart';

import '../../../data/datasource/static/static.dart';

class Customslideronbording extends StatelessWidget {
  const Customslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Implament_onbording_controler());
    return GetBuilder<Implament_onbording_controler>(
      builder: (controller) => PageView.builder(
          controller: controller.pagecontroller,
          onPageChanged: (value) => controller.onpagechanged(value),
          itemCount: onbordinglist.length,
          itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(onbordinglist[index].title!,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Appcolor.blackecolor)),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: Get.width / 1.2,
                    child: Image.asset(
                      onbordinglist[index].image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(onbordinglist[index].body!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge)
                      ]),
                ],
              )),
    );
  }
}
