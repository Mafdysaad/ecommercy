import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customfiled extends StatelessWidget {
  final String title;
  final String hint;
  // final TextEditingController control;
  //final String? Function(String?) vild;
  const customfiled({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        maxLines: 1,
        autofocus: false,
        textAlignVertical: TextAlignVertical.center,
        style: const TextStyle(color: Colors.black, fontSize: 25, height: 0.9),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelStyle: const TextStyle(fontSize: 20),
            prefixIcon: const Icon(
              fill: 1,
              Icons.person,
              size: 38,
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
