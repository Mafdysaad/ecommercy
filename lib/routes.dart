import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/send_otp.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/otp.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/resatepassword.dart';
import 'package:ecommerce/view/screen/auth/resatpassword/Success_resatpassword.dart';
import 'package:ecommerce/view/screen/auth/singup/success_sinup.dart';
import 'package:ecommerce/view/screen/auth/singup/otp_singUp.dart';
import 'package:ecommerce/view/screen/auth/singup/singup.dart';
import 'package:ecommerce/view/screen/homepage.dart';
import 'package:ecommerce/view/screen/homescreen.dart';
import 'package:ecommerce/view/screen/languge.dart';

import 'package:ecommerce/view/screen/onbording.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(
    name: '/',
    page: () => const Homescreen(),
    middlewares: [mymiddleware()],
  ),
  // page: () => const Languge(),
  GetPage(name: Approutes.login, page: () => const Login()),
  GetPage(name: Approutes.onbording, page: () => const OnBording()),
  GetPage(name: Approutes.singup, page: () => const Singup()),
  GetPage(name: Approutes.resatepassword, page: () => const Resatepassword()),
  GetPage(name: Approutes.send_otp, page: () => const Send_otp()),
  GetPage(name: Approutes.otp, page: () => const Otp()),
  GetPage(
      name: Approutes.Success_resatpassword,
      page: () => const Success_resatpassword()),
  GetPage(name: Approutes.Success_singup, page: () => const Success_singup()),
  GetPage(name: Approutes.Otp_singup, page: () => const Otp_singup()),
  GetPage(name: Approutes.homepage, page: () => const Homepage()),
];
