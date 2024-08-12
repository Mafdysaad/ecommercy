import 'package:flutter/material.dart';

class Custom_butom_singup extends StatelessWidget {
  final String title;
  final Function() function;
  const Custom_butom_singup(
      {super.key, required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: 150,
        height: 50,
        padding: const EdgeInsets.only(right: 10),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.amber,
          onPressed: function,
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
