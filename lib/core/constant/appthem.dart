import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

ThemeData English_them = ThemeData(
  fontFamily: 'Cairo',
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ),
  textTheme: const TextTheme(
    //for button
    labelLarge: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
    displayLarge: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    //for main title
    titleLarge: TextStyle(
        fontSize: 28, fontWeight: FontWeight.bold, color: Appcolor.blackecolor),
    //for subtitle
    titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        height: 2,
        letterSpacing: 1,
        color: Appcolor.gray),
    //for hint textformfiled
    headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        height: 2,
        letterSpacing: 1,
        color: Colors.black),
    //for small title
    titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 244, 8, 8)),
    //for small title
    headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 13, 229, 13)),
    //for label of textformfiled
    bodyMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        wordSpacing: 1),
  ),
  useMaterial3: true,
);
ThemeData Arabic_them = ThemeData(
  fontFamily: 'Cairo',
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.amber,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  ),
  textTheme: const TextTheme(
    //for button
    labelLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    //for main title
    titleLarge: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Appcolor.blackecolor),
    displayLarge: TextStyle(
        fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
    //for subtitle
    titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 2,
        letterSpacing: 1,
        color: Appcolor.gray),
    //for hint textformfiled
    headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 2,
        letterSpacing: 1,
        color: Colors.black),
    //for small title
    titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 244, 8, 8)),
    //for small title
    headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 13, 229, 13)),
    //for label of textformfiled
    bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        wordSpacing: 1),
  ),
  useMaterial3: true,
);
