import 'package:flutter/material.dart';
import 'package:get/get.dart';

InkWell elevateButton(String texto, String ruta) {
  return InkWell(
    borderRadius: BorderRadius.circular(5),
    onTap: () => {
      Get.toNamed(ruta),
    },
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue.shade500,
      ),
      width: double.infinity,
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      ),
    ),
  );
}
