import 'package:flutter/material.dart';

final List<Map<String, dynamic>> ayuda = [
  {
    'texto': 'Opinar sobre el vendedor',
    'route': "/home",
  },
  {'texto': 'Tengo problemas con mi compra', 'route': "/home"},
  {'texto': 'Tengo un problema con el pago', 'route': "/home"},
];
Card tarjetaAyudaCompra() {
  return Card(
    child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 18, top: 14, bottom: 15),
              child: Text('Ayuda con la compra',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            const Divider(
              height: 0,
              color: Colors.black12,
            ),
            for (var item in ayuda)
              InkWell(
                onTap: () => (item['route']),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18, top: 12, bottom: 12),
                        child: Text(item['texto'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                    ),
                    if (item != ayuda.last)
                      const Divider(
                        height: 0,
                        color: Colors.black12,
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),
          ],
        )),
  );
}
