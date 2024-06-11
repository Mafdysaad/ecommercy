import 'package:ecommerce/core/constant/appthem.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localcontroller extends GetxController {
  Locale? langue;
  Myservices myservices = Get.find();
  ThemeData appthem = English_them;

  //function to change languge of my app
  changlang(String langcode) {
    //local virable of locale to recive it languge
    Locale locale = Locale(langcode);
    //storged the languge into sharedprafrance
    myservices.sharedpref.setString('lang', langcode);
    appthem = langcode == 'ar' ? Arabic_them : English_them;
    Get.changeTheme(appthem);
    // update langue in the app
    Get.updateLocale(locale);
  }

//function to initialize the language when we open the app
  @override
  void onInit() {
    // to get lang from sharedpraferance
    String? sharedlang = myservices.sharedpref.getString('lang');
    if (sharedlang == 'ar') {
      langue = const Locale('ar');
      appthem = Arabic_them;
    } else if (sharedlang == 'en') {
      langue = const Locale('en');
      appthem = English_them;
    } else {
      langue = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
