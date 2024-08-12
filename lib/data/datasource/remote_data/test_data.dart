import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';

class get_data {
  //كده انا بمرره كا كنستراكتور
  crud Curd;
  get_data(this.Curd);
  getdata() async {
    // recive data from API
    Either<Statusrequst, Map> respons =
        await Curd.postdata(Linkapi.Test_link, {});
    // to reprsint data that recived from API
    return respons.fold((l) => l, (r) => r);
  }
}
