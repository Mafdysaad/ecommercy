import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cusomsingup extends StatelessWidget {
  final Function() onTap;
  final String textone;
  final String textwo;
  const Cusomsingup(
      {super.key,
      required this.onTap,
      required this.textone,
      required this.textwo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(textone,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.headlineSmall),
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(textwo,
                  style: Theme.of(context).textTheme.headlineLarge),
            ),
          ),
        ],
      ),
    );
  }
}
