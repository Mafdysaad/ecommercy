import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:get/get.dart';

class checke_otp {
  crud Curd;
  checke_otp(this.Curd);

  checke_verfiycode(String otp, String email) async {
    Either<Statusrequst, Map> respos = await Curd.postdata(
        Linkapi.Reset_verfiycode, {'verify_code': otp, 'email': email});

    return respos.fold((l) => l, (r) => r);
  }
}
