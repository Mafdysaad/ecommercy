import 'package:ecommerce/core/class/statusrequst.dart';

handlingdata(response) {
  if (response is Statusrequst) {
    return response;
  } else {
    //the response is not statusrequst is a data
    return Statusrequst.success;
  }
}
