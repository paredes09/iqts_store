import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.yellow,
    titleTextStyle: TextStyle(color: Colors.black),
  ),
  scaffoldBackgroundColor: Colors.white,
  listTileTheme: const ListTileThemeData(
    textColor: Colors.black54,
    iconColor: Colors.black54,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
          iconColor: WidgetStatePropertyAll(Colors.black87),
          overlayColor: WidgetStatePropertyAll(Colors.transparent))),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
    overlayColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        return Colors.transparent;
      },
    ),
    foregroundColor: const WidgetStatePropertyAll(
      Colors.blue,
    ),
  )),
);
