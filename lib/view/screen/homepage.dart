import 'package:ecommerce/controller/Home_controller/homepage_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/view/widget/home/cateagoris_slider.dart';
import 'package:ecommerce/view/widget/home/custom_apper.dart';
import 'package:ecommerce/view/widget/home/custom_title.dart';
import 'package:ecommerce/view/widget/home/items_offers.dart';
import 'package:ecommerce/view/widget/home/offers_screan.dart';
import 'package:ecommerce/view/widget/linkApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(implament_Homepagecontroller());
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('home page'),
        ),
        body: GetBuilder<implament_Homepagecontroller>(
            builder: (controller) => HandlingDataRequst(
                statusrequst: controller.statusrequst,
                widget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.only(top: 10),
                  child: ListView(
                    children: [
                      CustomAppBar(
                        onpressdsearch: () {},
                        onpressdnotification: () {},
                      ),
                      const OffersScrean(
                        title: 'A Summer Surpris',
                        body: 'Cashback 20%',
                      ),
                      const Cateagoris_Slider(),
                      const CustomTitle(title: 'Prodect for you ?'),
                      const ItemsOffers(),
                      const CustomTitle(title: '50% off'),
                      const ItemsOffers(),
                    ],
                  ),
                ))));
  }
}
