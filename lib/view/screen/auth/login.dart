import 'package:ecommerce/view/widget/login/customform.dart';
import 'package:ecommerce/view/widget/login/customformpassword.dart';
import 'package:ecommerce/view/widget/login/customsprator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../widget/login/custombutton.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('14'.tr),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back1.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Icon(
              Icons.lock_person_outlined,
              size: 130,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 100, child: customfiled(title: '10'.tr, hint: '10'.tr)),
            SizedBox(
                height: 100,
                child: custofildpass(title: '11'.tr, hint: '11'.tr)),
            const Custombutton(),
            const Customor(),
          ],
        ),
      ),
    );
  }
}
