import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/views/usuario/componentes/detalles_container.dart';

Padding cardDireccion(String titulo, localidad, nombre, telefono) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.home_outlined),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 230,
              height: 50,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 5,
                runSpacing: 5,
                children: [
                  detallesContainer('Ventas'),
                  detallesContainer('Compras'),
                  detallesContainer('Devoluciones'),
                  detallesContainer('Publicaciones'),
                  detallesContainer('Facturas')
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              localidad,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(nombre,
                style: const TextStyle(fontSize: 15, color: Colors.grey)),
            Text(telefono,
                style: const TextStyle(fontSize: 15, color: Colors.grey)),
          ],
        ),
        IconButton(
          onPressed: () {
            Get.toNamed('/add-direccion');
          },
          icon: const Icon(Icons.mode_edit_outline_outlined),
        )
      ],
    ),
  );
}
