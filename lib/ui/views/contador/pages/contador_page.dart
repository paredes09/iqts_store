import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/contador_controllers.dart';

class ContadorPage extends GetView<ContadorController> {
  const ContadorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MyPage')),
        body: const SafeArea(child: Text('MyController')));
  }
}
