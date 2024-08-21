import 'package:flutter/material.dart';

TextButton globalTextButton(Function()? onpress, String texto) {
  return TextButton(
    onPressed: () {},
    style: const ButtonStyle(
      padding: MaterialStatePropertyAll(EdgeInsets.zero),
    ),
    child: Text(
      texto,
      style: const TextStyle(fontSize: 11),
    ),
  );
}
