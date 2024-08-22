import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

InkWell listTitleOpciones(
    String titulo, HugeIcon icono, Function()? pressionar, Color? color) {
  return InkWell(
    onTap: pressionar,
    child: Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
      child: Center(
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: color ?? Colors.blue.shade500,
              child: icono,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(titulo),
          ],
        ),
      ),
    ),
  );
}




