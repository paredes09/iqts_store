import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/views/compras/componentes/tarjeta_detalle_compra.dart';
import 'package:iqts_store/ui/views/compras/componentes/tarjeta_detalle_envio_pago.dart';

// ignore: use_key_in_widget_constructors
class DetalleCompraPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 241, 241),
        appBar: AppBar(title: const Text('Detalle de la compra')),
        body: SafeArea(
            child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              detalleCompra(),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 15),
                child: Text('Detalles de pago',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              detallePagoEnvio('S/.93.89', 'Yape', '12 abril | #11234556789',
                  'Pago aprobado', 'assets/yape.png'),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 15),
                child: Text('Detalles de Envío',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              detallePagoEnvio('Calle Loreto 749', 'Maynas, Loreto.', null,
                  null, 'assets/carro.png'),
            ],
          ),
        )));
  }
}
