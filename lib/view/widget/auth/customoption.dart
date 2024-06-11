import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customoption extends StatelessWidget {
  const Customoption({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
                color: const Color.fromARGB(255, 236, 227, 227),
                height: 70,
                width: 70,
                child: Image.asset(
                  'assets/images/facebook.png',
                  // color: Colors.white,
                  fit: BoxFit.cover,
                )),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
                color: const Color.fromARGB(255, 236, 227, 227),
                height: 70,
                width: 70,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/google.png',
                    fit: BoxFit.fill,
                    // color: Colors.white,
                  ),
                )),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
                color: const Color.fromARGB(255, 236, 227, 227),
                height: 70,
                width: 70,
                child: Image.asset(
                  'assets/images/apple.png',
                  //  color: Colors.white,
                  fit: BoxFit.cover,
                )),
          ),
        ]));
  }
}
