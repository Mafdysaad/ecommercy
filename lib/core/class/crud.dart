import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;

class crud {
  // used either to return two value stuts and map
  Future<Either<Statusrequst, Map>> postdata(String url, Map data) async {
    try {
      bool reslt = await checkinternet();
      if (reslt) {
        http.Response response = await http.post(Uri.parse(url), body: data);
        print('44444444${response.body}++++++++++++');
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map<String, dynamic> responsbody = jsonDecode(response.body);
          print('########$responsbody');
          return Right(responsbody);
        } else {
          return const Left(Statusrequst.failure);
        }
      } else {
        return const Left(Statusrequst.oflinefailure);
      }
    } catch (_) {
      print(_);
      return const Left(Statusrequst.serverException);
    }
  }
}
