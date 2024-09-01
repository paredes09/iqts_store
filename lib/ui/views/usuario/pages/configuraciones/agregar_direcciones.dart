import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';
import 'package:iqts_store/ui/global/inputs/caja_texto.dart';

class AggDireccionesPage extends GetView {
  const AggDireccionesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Agregar domicilio')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                cajaTexto('Nombre y apellido'),
                const SizedBox(
                  height: 20,
                ),
                cajaTexto('Nombre de la dirección'),
                const SizedBox(
                  height: 20,
                ),
                cajaTexto('Número'),
                const SizedBox(
                  height: 20,
                ),
                cajaTexto('Piso / departamento (opcional)'),
                const SizedBox(
                  height: 20,
                ),
                cajaTexto('Teléfono de contacto'),
                const SizedBox(
                  height: 20,
                ),
                cajaTexto('Referencia adicional'),
                const SizedBox(
                  height: 20,
                ),
                elevateButton('Guardar', () {
                  Get.toNamed('/metodo-entrega');
                }),
              ],
            ),
          ),
        ));
  }
}
