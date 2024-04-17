import 'package:flutter/material.dart';
import 'package:get/get.dart';

InkWell elevateButton(String texto, String ruta) {
  return InkWell(
    borderRadius: BorderRadius.circular(10),
    onTap: () => {
      Get.toNamed(ruta),
    },
    child: Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(119, 74, 236, 98),
      ),
      width: double.infinity,
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    ),
  );
}
