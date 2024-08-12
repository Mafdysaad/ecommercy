import 'package:ecommerce/core/constant/customoutlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customfiled extends StatelessWidget {
  final String title;
  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController? texteditngcontroller;
  final Widget? suffixicon;
  final AutovalidateMode? autovalidatemode;

  const customfiled({
    super.key,
    required this.texteditngcontroller,
    required this.title,
    required this.hint,
    required this.validator,
    required this.suffixicon,
    this.autovalidatemode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
        child: TextFormField(
          controller: texteditngcontroller,
          validator: validator,
          maxLines: 1,
          autofocus: false,
          autovalidateMode: autovalidatemode,
          textAlignVertical: TextAlignVertical.center,
          style:
              const TextStyle(color: Colors.black, fontSize: 18, height: 0.9),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            suffixIcon: suffixicon,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            // filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: Theme.of(context).textTheme.bodyMedium,
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.headlineSmall,
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(title)),
            errorBorder: Customformat.customoutlineinput,
            focusedBorder: Customformat.customoutlineinput,
            enabledBorder: Customformat.customoutlineinput,
          ),
        ));
  }
}
