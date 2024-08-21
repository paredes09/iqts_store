import 'package:flutter/material.dart';

InkWell listTitleOpciones(String titulo, Icon icono, Function()? pressionar) {
  return InkWell(
    onTap: pressionar,
    child: Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
      child: Center(
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey[200],
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
