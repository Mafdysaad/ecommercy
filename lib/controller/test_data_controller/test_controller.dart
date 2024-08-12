import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:ecommerce/data/datasource/remote_data/test_data.dart';
import 'package:get/get.dart';

class test_controller extends GetxController {
  get_data data = get_data(Get.find());
  // to recive data from database
  List Data = [];
  // to check if conaction with database is done or not
  late Statusrequst statusrequst;

  getdata_form_database() async {
    //becouse data loading from server
    statusrequst = Statusrequst.loading;
    //to recive respons from database
    var respons = await data.getdata();
    // check if the statusrequst is data or statusrequst
    // if statusrequst == Statusrequst.Success that be we have data
    statusrequst = handlingdata(respons);
    if (statusrequst == Statusrequst.success) {
      if (respons['status'] == 'success') {
        //add data from jeson file to Data List
        Data.addAll(respons["data"]);
        print('==========$Data');
      } else {
        statusrequst = Statusrequst.failure;
      }
    }
    //to make updata to UI
    update();
  }

  @override
  void onInit() {
    getdata_form_database();
    super.onInit();
  }
}
