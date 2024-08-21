import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.yellow,
    titleTextStyle: TextStyle(color: Colors.black),
  ),
  listTileTheme: const ListTileThemeData(
    textColor: Colors.black54,
    iconColor: Colors.black54,
  ),
  iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.black87),
          overlayColor: MaterialStatePropertyAll(Colors.transparent))),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        return Colors.transparent;
      },
    ),
    foregroundColor: const MaterialStatePropertyAll(
      Colors.blue,
    ),
  )),
  /* elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(Colors.black54),
          backgroundColor: MaterialStatePropertyAll(Colors.blue.shade900))),
  fontFamily: 'HelveticaNeue',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ), */
);
