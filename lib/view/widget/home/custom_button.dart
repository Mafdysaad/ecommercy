import 'package:ecommerce/controller/Home_controller/homescreen_contriller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton_for_appBar extends StatelessWidget {
  final IconData? icon;
  final String name_ofcateagoris;
  const CustomButton_for_appBar(
      {super.key, required this.icon, required this.name_ofcateagoris});

  @override
  Widget build(BuildContext context) {
    Color? color = Colors.white;
    return GetBuilder<Implament_hmescrenncontroller>(
      builder: (controller) => MaterialButton(
        onPressed: () {
          color = Colors.red;
        },
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Expanded(
            child: Icon(
              size: 35,
              icon,
              color: color,
            ),
          ),
          Expanded(
            child: Text(
              name_ofcateagoris,
              style: TextStyle(fontSize: 18, color: color),
            ),
          )
        ]),
      ),
    );
  }
}
