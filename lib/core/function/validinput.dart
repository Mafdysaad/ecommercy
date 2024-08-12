import 'package:ecommerce/controller/auth_controller/login_controller.dart';

import 'package:ecommerce/controller/auth_controller/singup_controller.dart';
import 'package:ecommerce/controller/reset_password/resatpassword_controller.dart';
import 'package:get/get.dart';
import 'dart:isolate';

validInput(String value, int max, int min, String type, {String? combering}) {
  if (type == 'username') {
    if (!GetUtils.isUsername(value)) {
      return '48'.tr;
    }
  }
  if (type == 'email') {
    if (value.isEmpty) {
      return '49'.tr;
    }
    if (!GetUtils.isEmail(value)) {
      return '50'.tr;
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(value)) {
      return '51'.tr;
    }
  }
  if (type == 'password') {
    RegExp regEx = RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
    regEx.hasMatch(value).hashCode;
    if (value.isEmpty || !(regEx.hasMatch(value))) {
      return '52'.tr;
    }
    if (value.length < min) {
      return '${'53'.tr}$min';
    }
    if (value.length > max) {
      return '${'54'.tr}$max';
    }
  }
  if (type == 'confirmpassword_singup') {
    if (value.isEmpty) {
      return '56'.tr;
    }
    if (value != combering) {
      return '55'.tr;
    }
  }
  if (type == 'confirmpassword_resat') {
    if (value.isEmpty) {
      return '56'.tr;
    }
    if (value != combering) {
      return '55'.tr;
    }
  }
  if (value.length > max) {
    return '${'54'.tr}$max';
  }
  if (value.length < min) {
    return '${'53'.tr}$min';
  }
}
