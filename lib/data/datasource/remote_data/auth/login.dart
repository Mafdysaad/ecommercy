import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:get/get.dart';

class Login_data {
  crud Curd;
  Login_data(this.Curd);

  login_data(String email, String password) async {
    Either<Statusrequst, Map> respos = await Curd.postdata(
        Linkapi.Login, {'email': email, 'password': password});

    return respos.fold((l) => l, (r) => r);
  }
}
