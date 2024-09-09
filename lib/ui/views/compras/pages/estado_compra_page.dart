import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/ui/global/botones/text_global_button.dart';
import 'package:iqts_store/ui/views/compras/componentes/tarjeta_ayuda_compra.dart';
import 'package:iqts_store/ui/views/compras/componentes/tarjeta_estado_compra.dart';

class EstadoCompraPage extends GetView {
  const EstadoCompraPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Estado de la compra'),
        ),
        body: SafeArea(
            child: Container(
          color: const Color.fromARGB(255, 247, 241, 241),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 15, right: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'Peluche de unicornio x1 - S/ 50.00 sin envíosdsdsdsdsdasdsadasd',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                  height: 15,
                                  child:
                                      globalTextButton(null, 'Ver detalles')),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/ejemplo.webp'))),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(Icons.star_outlined,
                          size: 18, color: Colors.blue.shade700),
                      Icon(Icons.star_outlined,
                          size: 18, color: Colors.blue.shade700),
                      Icon(Icons.star_outlined,
                          size: 18, color: Colors.blue.shade700),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          height: 15,
                          child: globalTextButton(null, 'Editar opinión')),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: tarjetaDetalleEstadoCompra()),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: tarjetaAyudaCompra()),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () => Get.toNamed('/detalle-compra'),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Detalle de la compra',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              HugeIcon(
                                  icon: HugeIcons.strokeRoundedArrowRight01,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
