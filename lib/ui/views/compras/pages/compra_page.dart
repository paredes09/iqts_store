import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/src/controllers/compra_controllers.dart';
import 'package:iqts_store/ui/views/compras/componentes/buscador_compra.dart';
import 'package:iqts_store/ui/views/compras/componentes/tarjeta_compra.dart';

class CompraPage extends GetView<CompraController> {
  const CompraPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Mis compras')),
        body: Container(
          color: const Color.fromARGB(255, 247, 241, 241),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: buscador()),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton.icon(
                          style: const ButtonStyle(
                              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () {},
                          icon: const HugeIcon(
                              size: 18,
                              icon: HugeIcons.strokeRoundedFilterHorizontal,
                              color: Colors.blue),
                          label: const Text('Filtrar'))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          tarjetaEstadoCompra(),
                          tarjetaEstadoCompra(),
                          tarjetaEstadoCompra(),
                          tarjetaEstadoCompra(),
                          tarjetaEstadoCompra(),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
