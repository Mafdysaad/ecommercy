import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  final String path;
  const Logo({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SizedBox(
        height: 200,
        width: 100,
        child: Image.asset(
          path,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
