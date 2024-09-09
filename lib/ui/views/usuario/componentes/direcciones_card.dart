import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/ui/global/botones/icon_global_button.dart';
import 'package:iqts_store/ui/views/usuario/componentes/detalles_container.dart';

Padding cardDireccion(String titulo, localidad, nombre, telefono) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HugeIcon(icon: HugeIcons.strokeRoundedHome06, color: Colors.grey),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
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
        iconGlobalButton(
          HugeIcons.strokeRoundedPencilEdit02,
          () {
            Get.toNamed('/add-direccion');
          },
          Colors.grey,
        ),
      ],
    ),
  );
}
