import 'package:ecommerce/core/constant/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customtext extends StatelessWidget {
  final String contant;
  final Function() function;
  const Customtext({super.key, required this.contant, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          textAlign: TextAlign.end,
          contant,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
