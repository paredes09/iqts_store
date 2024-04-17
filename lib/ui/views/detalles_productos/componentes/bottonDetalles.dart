// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

InkWell getBottonDetalles(String ruta) {
  return InkWell(
    borderRadius: BorderRadius.circular(5),
    onTap: () => {
      Get.toNamed(ruta),
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Ver la guía de tallas completa',
                  style: TextStyle(
                    color: Colors.blue,
                  )),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 17,
            color: Colors.blue,
          )
        ],
      ),
    ),
  );
}
