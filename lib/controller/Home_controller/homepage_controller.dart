import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/Homepagedata.dart';
import 'package:ecommerce/data/datasource/remote_data/test_data.dart';
import 'package:ecommerce/view/screen/homepage.dart';
import 'package:get/get.dart';

abstract class HomepageController extends GetxController {
  Data_categories();
  String? email;
  Statusrequst statusrequst = Statusrequst.none;
  Homepagedata homepagedata = Homepagedata(Get.put(crud()));
  List categories = [];
  List descont = [];
}

class implament_Homepagecontroller extends HomepageController {
  @override
  Data_categories() async {
    var respons = await homepagedata.getdata();
    statusrequst = handlingdata(respons);
    update();
    if (statusrequst == Statusrequst.success) {
      if (respons['status'] == 'success') {
        categories.addAll(respons['categories']);
        descont.addAll(respons["items"]);
      } else {}
      update();
    }
  }

  @override
  void onInit() {
    Data_categories();
    super.onInit();
  }
}
