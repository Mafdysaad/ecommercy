import 'package:flutter/cupertino.dart';

class Logo_sinup extends StatelessWidget {
  final String path;
  const Logo_sinup({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SizedBox(
        height: 150,
        width: 100,
        child: Image.asset(
          path,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
