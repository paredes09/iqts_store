import 'package:flutter/material.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';

Card tarjetaDetalleEstadoCompra() {
  return Card(
    child: ClipPath(
      clipper: ShapeBorderClipper(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(left: BorderSide(color: Colors.green, width: 5)),
        ),
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Entregado',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    'Llegó el 17 de abril',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                        'Urbano entrego tu paquete a las 12:15 hs en la Calle 1 Mz. 2 Lt. 3, San Juan de Lurigancho.',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 14)),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: elevateButton('Volver a Comprar', '/compra'),
            ),
          ],
        ),
      ),
    ),
  );
}
