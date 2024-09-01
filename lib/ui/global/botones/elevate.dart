import 'package:flutter/material.dart';

InkWell elevateButton(String texto, Function()? onPressed) {
  return InkWell(
    borderRadius: BorderRadius.circular(5),
    onTap: onPressed,
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
