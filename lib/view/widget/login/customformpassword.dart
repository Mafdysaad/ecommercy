import 'package:flutter/material.dart';

class custofildpass extends StatelessWidget {
  final String title;
  final String hint;
  const custofildpass({super.key, required this.title, required this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(color: Colors.black, fontSize: 25, height: 0.9),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelStyle: const TextStyle(fontSize: 20),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon((Icons.visibility_off_rounded)),
            ),
            floatingLabelAlignment: FloatingLabelAlignment.start,
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              wordSpacing: 1,
            ),
            label: Text(title),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ))),
      ),
    );
  }
}
