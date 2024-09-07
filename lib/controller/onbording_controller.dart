import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class onbording extends GetxController {
  onpagechanged(int value);
  next();
}

class Implament_onbording_controler extends onbording {
  //to access the content of the myservices
  Myservices myservices = Get.find();
  int currentpage = 0;
  late PageController pagecontroller;
  //function to storage number of current page
  @override
  onpagechanged(int value) {
    currentpage = value;
    update();
  }

  //function to controll of the silider
  @override
  next() {
    //every tap to the button the variable will be increamint
    currentpage++;
    //check the user saw all the pages or not
    if (currentpage > onbordinglist.length - 1) {
      Get.offAllNamed(Approutes.login);
      myservices.sharedpref.setString('step', '1');
    } else {
      pagecontroller.animateToPage(currentpage,
          duration: const Duration(microseconds: 900),
          curve: Curves.bounceInOut);
    }

    update();
  }

  //function to initialization all controller are we used
  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
