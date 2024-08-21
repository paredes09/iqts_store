import 'package:flutter/material.dart';

Container detallesContainer(titulo) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 160, 176, 244)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Text(
        titulo,
        style: TextStyle(
            fontSize: 11,
            color: Colors.blue.shade700,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
