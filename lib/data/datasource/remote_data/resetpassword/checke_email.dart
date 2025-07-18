import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:get/get.dart';

class checke_email {
  crud Curd; //object from class curd
  //depandincy  injection
  checke_email(this.Curd); // initialize object by constructor

  checke(String email) async {
    Either<Statusrequst, Map> respos =
        await Curd.postdata(Linkapi.check, {'email': email});

    return respos.fold((l) => l, (r) => r);
  }
}
