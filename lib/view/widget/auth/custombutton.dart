import 'package:ecommerce/controller/auth_controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombutton extends GetView<Implament_login_controler> {
  final Function() function;
  final String tiltle;
  const Custombutton({super.key, required this.function, required this.tiltle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
      child: MaterialButton(
          shape: Theme.of(context).buttonTheme.shape,
          color: Colors.amber,
          onPressed: function,
          child: Text(tiltle, style: Theme.of(context).textTheme.labelLarge)),
    );
  }
}
