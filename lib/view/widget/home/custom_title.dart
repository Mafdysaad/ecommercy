import 'package:flutter/widgets.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Text(
        title,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
