import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          color: const Color.fromARGB(255, 232, 227, 227),
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
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () {},
                          icon: const Icon(Icons.filter_alt_outlined),
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
