import 'package:ecommerce/controller/auth_controller/login_controller.dart';
import 'package:ecommerce/core/constant/customoutlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class custofildpass extends StatelessWidget {
  final String title;
  final String hint;
  final String? Function(String?) validator;
  final TextEditingController? texteditngcontroller;
  final AutovalidateMode? autovalidatemode;
  const custofildpass(
      {super.key,
      required this.texteditngcontroller,
      required this.title,
      required this.hint,
      required this.validator,
      this.autovalidatemode});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 30,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: GetBuilder<Implament_login_controler>(
            init: Implament_login_controler(),
            builder: (controller) => TextFormField(
              validator: validator,
              controller: texteditngcontroller,
              maxLines: 1,
              obscureText: controller.obsec,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              autofocus: false,
              textAlignVertical: TextAlignVertical.center,

              // autovalidateMode: AutovalidateMode.onUserInteraction,
              style: const TextStyle(
                  color: Colors.black, fontSize: 18, height: 0.9),

              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.changeobsec();
                  },
                  icon: controller.obsec == true
                      ? const Icon((Icons.visibility_off_rounded))
                      : const Icon(Icons.visibility),
                ),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                //  filled: true,
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
            ),
          ),
        ));
  }
}
