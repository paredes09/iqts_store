import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/compra_controllers.dart';

class CompraPage extends GetView<CompraController> {
  const CompraPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('CompraPage')),
        body: const SafeArea(child: Center(child: Text('CompraController'))));
  }
}
