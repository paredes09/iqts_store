import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaracteristicasPage extends GetView {
  const CaracteristicasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Caracteristicas del producto')),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Caracteristicas Principales',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54,
                  )),
              const SizedBox(
                height: 15,
              ),
              Table(
                border: TableBorder.all(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 255, 254, 254)),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(1),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text(
                          'Talla',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text(
                          'US',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('S', textAlign: TextAlign.center),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('85-89', textAlign: TextAlign.center),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text('M', textAlign: TextAlign.center),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text('90-94', textAlign: TextAlign.center),
                      ),
                    ),
                  ]),
                  // Agrega más filas según sea necesario
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Otras caracteristicas.',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54,
                  )),
              const SizedBox(
                height: 15,
              ),
              Table(
                border: TableBorder.all(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 255, 254, 254)),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(1),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text(
                          'Talla',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text(
                          'US',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('S', textAlign: TextAlign.center),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('85-89', textAlign: TextAlign.center),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text('M', textAlign: TextAlign.center),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: Colors.grey[200],
                        child: const Text('90-94', textAlign: TextAlign.center),
                      ),
                    ),
                  ]),
                  // Agrega más filas según sea necesario
                ],
              ),
            ],
          ),
        ));
  }
}
