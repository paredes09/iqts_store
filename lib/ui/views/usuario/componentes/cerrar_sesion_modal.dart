import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iqts_store/src/controllers/login_controllers.dart';

final controller = Get.find<LoginController>();

AlertDialog modalCerrarSesion() {
  return AlertDialog(
    content: const Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Text('¿Quieres cerrar sesión?',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
    ),
    actions: [
      TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancelar')),
      TextButton(
          onPressed: () {
            controller.signOutGoogle();
            Get.back();
          },
          child: const Text('Confirmar')),
    ],
  );
}
