import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/data/datasource/remote_data/test_data.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:get/get.dart';

class Homepagedata {
  crud Curd;
  Homepagedata(this.Curd);

  getdata() async {
    Either<Statusrequst, Map> respos =
        await Curd.postdata(Linkapi.homepage, {});

    return respos.fold((l) => l, (r) => r);
  }
}
