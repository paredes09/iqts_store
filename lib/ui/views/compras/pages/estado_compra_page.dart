import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          color: const Color.fromARGB(255, 232, 227, 227),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'Peluche de unicornio x1 - S/ 50.00 sin envíosdsdsdsdsdasdsadasd',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                                height: 15,
                                child: TextButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                    padding:
                                        WidgetStatePropertyAll(EdgeInsets.zero),
                                  ),
                                  child: Text(
                                    'Ver detalle',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )),
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
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12),
                          color: Colors.amber,
                          image: const DecorationImage(
                              image: AssetImage('assets/ejemplo.webp'))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.star_outlined,
                        size: 16, color: Colors.blue.shade700),
                    Icon(Icons.star_outlined,
                        size: 16, color: Colors.blue.shade700),
                    Icon(Icons.star_outlined,
                        size: 16, color: Colors.blue.shade700),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        height: 15,
                        child: TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          ),
                          child: Text(
                            'Editar opinión',
                            style: TextStyle(fontSize: 12),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
