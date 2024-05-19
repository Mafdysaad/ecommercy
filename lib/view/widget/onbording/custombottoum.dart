import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombutton extends GetView<Implament_onbording_controler> {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      width: 200,
      height: 40,
      child: MaterialButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          controller.next();
        },
        padding: const EdgeInsets.all(10),
        color: Colors.amber,
        child: const Text(
          'Continue',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
