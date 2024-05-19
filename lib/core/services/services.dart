import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservices extends GetxService {
  late SharedPreferences sharedpref;
  Future<Myservices> init() async {
    sharedpref = await SharedPreferences.getInstance();
    return this;
  }
}

initailizeservices() async {
  await Get.putAsync(() => Myservices().init());
}
