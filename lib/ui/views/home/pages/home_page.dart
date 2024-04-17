import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/home_controllers.dart';
import 'package:iqts_store/src/controllers/producto_controller.dart';
import 'package:iqts_store/ui/views/detalles_productos/pages/producto_page.dart';

// ignore: must_be_immutable
class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProductoController());
    return const ProductoPage();
  }
}
