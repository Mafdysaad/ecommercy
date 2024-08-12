import 'package:country_code_text_field/country_code_text_field.dart';

import 'package:ecommerce/core/constant/customoutlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Country_CodeText_Field extends StatelessWidget {
  final String title;
  final String hint;
  // final String? Function(PhoneNumber?)? validator;
  final TextEditingController? texteditngcontroller;
  final Widget? suffixicon;

  const Country_CodeText_Field(
      {super.key,
      required this.texteditngcontroller,
      required this.title,
      required this.hint,
      required this.suffixicon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
        child: CountryCodeTextField(
          controller: texteditngcontroller,
          bottomSheetTitle: '58'.tr,
          invalidNumberMessage: '57'.tr,
          initialCountryCode: 'EG',
          flagsButtonPadding: const EdgeInsets.all(10),
          autofocus: false,
          textAlignVertical: TextAlignVertical.center,
          style:
              const TextStyle(color: Colors.black, fontSize: 18, height: 0.9),
          keyboardType: TextInputType.phone,
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
