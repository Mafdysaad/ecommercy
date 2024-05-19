import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customor extends StatelessWidget {
  const Customor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Divider(
              color: Colors.black,
              indent: 10,
              endIndent: 10,
              thickness: 3,
            ),
          ),
          Text(
            '13'.tr,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Expanded(
            flex: 2,
            child: Divider(
              color: Colors.black,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
          ),
        ],
      ),
    );
  }
}
