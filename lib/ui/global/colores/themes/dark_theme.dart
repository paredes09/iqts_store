import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(119, 21, 210, 49),
    titleTextStyle: TextStyle(color: Colors.black54),
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  ),
  listTileTheme: const ListTileThemeData(
    textColor: Colors.black54,
    iconColor: Colors.black54,
  ),
  iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.black54))),
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
  elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.black54),
          backgroundColor: MaterialStatePropertyAll(
            Color.fromARGB(119, 74, 236, 98),
          ))),
  fontFamily: 'HelveticaNeue',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
