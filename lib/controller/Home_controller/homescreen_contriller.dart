import 'package:ecommerce/view/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomescreenController extends GetxController {
  Function changepage(int curantpage);
}

class Implament_hmescrenncontroller extends HomescreenController {
  final int currentpag = 0;
  List<Widget> pages = [
    const Homepage(),
  ];
  @override
  Function changepage(int curantpage) {
    // TODO: implement currentpage
    throw UnimplementedError();
  }
}
