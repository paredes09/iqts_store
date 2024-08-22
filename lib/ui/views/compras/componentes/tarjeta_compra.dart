import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/global/botones/text_global_button.dart';

SizedBox tarjetaEstadoCompra() {
  return SizedBox(
    width: double.infinity,
    child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '17 de abril',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  SizedBox(
                      height: 20,
                      child: globalTextButton(() {}, 'Volver a comprar'))
                ],
              ),
            ),
            const Divider(
              color: Colors.black12,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/estado-compra');
              },
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 15, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black12),
                            image: const DecorationImage(
                                image: AssetImage('assets/ejemplo.webp'))),
                        height: 70,
                        width: 70,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Flexible(
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'LLegó el dia 21 de abril',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 270,
                              child: Text(
                                'Urbano entrego tu pedido a las 12:15 PM IQUITOS, MAYNAS - LORETO ',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            )
          ],
        )),
  );
}
