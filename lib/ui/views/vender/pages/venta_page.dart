import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/venta_controllers.dart';

class VentaPage extends GetView<VentaController> {
  const VentaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('VentaPage')),
        body: const SafeArea(child: Center(child: Text('VentaController'))));
  }
}
