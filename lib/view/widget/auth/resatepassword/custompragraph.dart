import 'package:flutter/material.dart';

class Custompragraph extends StatelessWidget {
  final String contant;
  const Custompragraph({super.key, required this.contant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
          textAlign: TextAlign.start,
          contant,
          style: Theme.of(context).textTheme.titleMedium),
    );
  }
}
