import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:flutter/widgets.dart';

class Singup_data {
  crud Crud;
  Singup_data(this.Crud);

  postdata(String email, String username, String phone, String password) async {
    Either<Statusrequst, Map> respons = await Crud.postdata(Linkapi.Sing_up, {
      "email": email,
      "username": username,
      "phone": phone,
      "password": password,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
