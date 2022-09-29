import 'package:flutter/material.dart';
import 'colors.dart';

class MyThemes {
  static final themeLight = ThemeData(
    scaffoldBackgroundColor: MyColors.C_FEFEFF,
    appBarTheme: const AppBarTheme(color: Colors.blue),
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.black),
    ),
  );

  static final themeDark = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColors.C_0D0D0D,
    ),
    backgroundColor: MyColors.C_0D0D0D,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white),
    ),
  );
}