import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class mymiddleware extends GetMiddleware {
  Myservices myservices = Get.find();
  @override
  int? get priority => 1;
  @override
  redirect(String? route) {
    //to validate the user see the onboarding page or not
    if (myservices.sharedpref.getString('onbording') == 'done') {
      return const RouteSettings(name: Approutes.login);
    }
    return null;
  }
}
