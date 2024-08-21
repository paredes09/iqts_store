import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/views/usuario/componentes/direcciones_card.dart';

class DireccionesPage extends GetView {
  const DireccionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis datos')),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 221, 220, 220),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Direcciones',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Card(
                child: Column(
                  children: [
                    cardDireccion('Loreto 479 1', 'Loreto - Maynas',
                        'aroldo francisco paredes piñeiros', '935827864'),
                    const Divider(),
                    cardDireccion('Loreto 479 1', 'Loreto - Maynas',
                        'aroldo francisco paredes piñeiros', '935827864'),
                    InkWell(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13)),
                      onTap: () {
                        Get.toNamed('/add-direccion');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        width: double.infinity,
                        height: 55,
                        decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Colors.black12, width: 1.7)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text('Agregar domicilio',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
