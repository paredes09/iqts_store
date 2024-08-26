import 'package:flutter/material.dart';

Card detallePagoEnvio(String? titulo, String? subtitle, String? fecha,
    String? estadoPago, String img) {
  return Card(
    child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.black12),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(img),
                  height: 30,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (titulo != null && titulo.isNotEmpty)
                  Text(titulo, style: const TextStyle(fontSize: 16)),
                if (subtitle != null && subtitle.isNotEmpty)
                  Text(subtitle,
                      style: const TextStyle(color: Colors.grey, fontSize: 12)),
                if (fecha != null && fecha.isNotEmpty)
                  Text(fecha,
                      style: const TextStyle(color: Colors.grey, fontSize: 12)),
                if (estadoPago != null && estadoPago.isNotEmpty)
                  Text(estadoPago,
                      style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
