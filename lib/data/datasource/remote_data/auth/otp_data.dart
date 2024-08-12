import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:flutter/widgets.dart';

class Otp_data {
  crud Crud;
  Otp_data(this.Crud);

  verify_code(String email, String verfiy_code) async {
    Either<Statusrequst, Map> respons =
        await Crud.postdata(Linkapi.Verfiycode, {
      "email": email,
      "verify_code": verfiy_code,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
