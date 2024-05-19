import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class onbording extends GetxController {
  onpagechanged(int value);
  next();
}

class Implament_onbording_controler extends onbording {
  int currentpage = 0;
  late PageController pagecontroller;
  @override
  onpagechanged(int value) {
    currentpage = value;
    update();
  }

  @override
  next() {
    currentpage++;
    if (currentpage > onbordinglist.length - 1) {
      Get.offAllNamed(Approutes.login);
    } else {
      pagecontroller.animateToPage(currentpage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }

    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
