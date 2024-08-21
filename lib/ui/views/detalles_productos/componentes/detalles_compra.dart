import 'package:flutter/material.dart';

Padding detallesCompra(texto, imagen, texto2) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
    child: Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
              child: Image(
            image: AssetImage(imagen),
            height: 30,
          )),
        ),
        const SizedBox(height: 10),
        Text(
          texto,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              texto2,
              style: const TextStyle(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    ),
  );
}
