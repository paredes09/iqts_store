import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/home_controllers.dart';
import 'package:iqts_store/ui/global/widgets/buscador.dart';
import 'package:iqts_store/ui/global/widgets/drawer.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: BuscadorPage(
            'Buscar...',
          )),
      drawer: const DrawerPage(),
      body: const Center(
          child: Text(
        'CHIVO EL QUE LO LEE',
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
