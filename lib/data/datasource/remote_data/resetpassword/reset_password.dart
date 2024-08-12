import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:get/get.dart';

class ChangePassword {
  crud Curd;
  ChangePassword(this.Curd);

  updatpassword(String password, String email) async {
    Either<Statusrequst, Map> respos = await Curd.postdata(
        Linkapi.Resetpassword, {'password': password, "email": email});

    return respos.fold((l) => l, (r) => r);
  }
}
