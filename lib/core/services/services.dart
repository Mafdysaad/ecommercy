import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservices extends GetxService {
  late SharedPreferences sharedpref;
  //iniatilize sharedpreferenc
  Future<Myservices> init() async {
    sharedpref = await SharedPreferences.getInstance();
    await Firebase.initializeApp();
    return this;
  }
}

//injunction the myservices after initializing it
initailizeservices() async {
  await Get.putAsync(() => Myservices().init());
}
