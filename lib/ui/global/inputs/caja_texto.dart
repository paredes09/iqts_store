import 'package:flutter/material.dart';

Widget cajaTexto(String texto) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Text(texto),
      ),
      TextFormField(
        cursorColor: Colors.blue.shade500,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 1, color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 2,
              color:
                  Colors.blue.shade500, // Color de borde cuando está enfocado
            ),
          ),
        ),
      ),
    ],
  );
}
