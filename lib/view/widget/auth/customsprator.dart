import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custom_OR extends StatelessWidget {
  const Custom_OR({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 15),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Divider(
              color: Colors.black,
              indent: 15,
              endIndent: 15,
              thickness: 3,
            ),
          ),
          Text(
            'OR'.tr,
            style: Theme.of(context).textTheme.bodyMedium,
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
