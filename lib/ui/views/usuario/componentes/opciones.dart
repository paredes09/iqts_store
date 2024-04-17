import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/routes/app_pages.dart';

InkWell listTitleOpciones(String titulo, Icon icono) {
  return InkWell(
    onTap: () => Get.toNamed(Routes.direcciones),
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
