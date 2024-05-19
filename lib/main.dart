import 'package:ecommerce/core/constant/binding.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/localization/changlocal.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/languge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initailizeservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Localcontroller lancontroller = Get.put(Localcontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Mytranslation(),
      locale: lancontroller.langue,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Appcolor.blackecolor),
          bodyLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 2,
              letterSpacing: 1,
              color: Appcolor.gray),
        ),
        useMaterial3: true,
      ),
      home: const Languge(),
      routes: routes,
      initialBinding: Mybinding(),
    );
  }
}
