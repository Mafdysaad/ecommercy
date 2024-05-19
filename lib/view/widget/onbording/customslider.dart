import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onbording_controller.dart';

import '../../../data/datasource/static/static.dart';

class Customslideronbording extends GetView<Implament_onbording_controler> {
  const Customslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (value) => controller.onpagechanged(value),
        itemCount: onbordinglist.length,
        itemBuilder: (context, index) => Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(onbordinglist[index].title!,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    onbordinglist[index].image!,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(onbordinglist[index].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge)
                ]),
              ],
            ));
  }
}
