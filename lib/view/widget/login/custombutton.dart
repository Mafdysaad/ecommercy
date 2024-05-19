import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 60, right: 60),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: MaterialButton(
          color: Colors.amber,
          onPressed: () {},
          child: Text(
            '12'.tr,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
