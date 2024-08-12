import 'package:ecommerce/controller/test_data_controller/test_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/statusrequst.dart';
import 'package:ecommerce/core/function/handlingdata.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Title(color: Colors.black, child: const Text('test remot data')),
        ),
        body: GetBuilder<test_controller>(builder: (controller) {
          return Center(
            child: HandlingDataRequst(
                statusrequst: controller.statusrequst,
                widget: ListView.builder(
                    itemCount: controller.Data.length,
                    itemBuilder: (cmd, index) {
                      return Text('${controller.Data}');
                    })),
          );
        }));
  }
}
