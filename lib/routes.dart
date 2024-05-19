import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/onbording.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approutes.login: (context) => const login(),
  Approutes.onbording: (context) => const OnBording(),
};
