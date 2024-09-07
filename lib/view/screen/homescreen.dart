import 'package:dartz/dartz.dart';
import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';
import 'package:ecommerce/view/widget/auth/custombutton.dart';
import 'package:ecommerce/view/widget/home/custom_button.dart';
import 'package:ecommerce/view/widget/language/customboutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(Implament_hmescrenncontroller());
    return GetBuilder<Implament_hmescrenncontroller>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                  )),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const BottomAppBar(
                height: 70,
                
                notchMargin: 10,
                shape: CircularNotchedRectangle(),
                color: Colors.amber,
                child: Row(children: [
                  Row(
                    children: [
                      CustomButton_for_appBar(
                        name_ofcateagoris: 'Home',
                        icon: Icons.home,
                      ),
                      CustomButton_for_appBar(
                        name_ofcateagoris: 'Home',
                        icon: Icons.home,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButton_for_appBar(
                        name_ofcateagoris: 'Home',
                        icon: Icons.home,
                      ),
                      CustomButton_for_appBar(
                        name_ofcateagoris: 'Home',
                        icon: Icons.home,
                      ),
                    ],
                  )
                ]),
              ),
              body: controller.pages[controller.currentpag],
            ));
  }
}
