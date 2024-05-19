import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localcontroller extends GetxController {
  Locale? langue;
  Myservices myservices = Get.find();
  //function to tchange languge of my app
  changlang(String langcode) {
    //local virable of locale to recive it languge
    Locale locale = Locale(langcode);
    //storged the languge into sharedprafrance
    myservices.sharedpref.setString('lang', langcode);
    // update langue in the app
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // to get lang from sharedpraferance
    String? sharedlang = myservices.sharedpref.getString('lang');
    if (sharedlang == 'ar') {
      langue = const Locale('ar');
    } else if (sharedlang == 'en') {
      langue = const Locale('en');
    } else {
      langue = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
