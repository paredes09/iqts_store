import 'package:flutter/material.dart';

TextButton globalTextButton(Function()? onpress, String texto) {
  return TextButton(
    onPressed: () {},
    style: const ButtonStyle(
      padding: WidgetStatePropertyAll(EdgeInsets.zero),
    ),
    child: Text(
      texto,
      style: const TextStyle(fontSize: 12),
    ),
  );
}
