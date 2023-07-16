import 'package:flutter/material.dart';

ThemeData getThemeDataLight() => ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.amberAccent),
    )
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.green,
  )
);