import 'package:flutter/material.dart';

SizedBox buscador() {
  return SizedBox(
    height: 35,
    child: TextField(
        decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(0),
      hintText: 'Buscar',
      hintStyle: const TextStyle(fontSize: 14, height: 1.5, color: Colors.grey),
      prefixIcon: const Icon(
        Icons.search,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(width: 1, color: Colors.grey)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(
          width: 2,
          color: Colors.blue.shade500, // Color de borde cuando está enfocado
        ),
      ),
    )),
  );
}
