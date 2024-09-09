import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MetodoEntregaPage extends GetView {
  const MetodoEntregaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('Detalles de la compra')),
        body: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      title: Text(
                        'Dirección de entrega',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Calle 1234, Ciudad - aroldo francisco paredes piñeiros - 935827864, frente al jardin boniffati, loreto, loreto, peru',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/add-direccion');
                        },
                        child: const Text('Editar o Elegir otro'))
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('¿Cómo deseas pagar?', style: TextStyle(fontSize: 18)),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*  InkWell(
                      onTap: () {
                        controller.setSelectedRadio(0);
                      },
                      child: ListTile(
                        leading: Obx(() => Radio(
                              value: 0,
                              groupValue: controller.selectedRadio.value,
                              onChanged: (value) {
                                controller.setSelectedRadio(value);
                              },
                            )),
                        title: const Text('Tarjeta de crédito'),
                        subtitle:
                            const Text('Visa, Mastercard, American Express'),
                        trailing: const Icon(Icons.credit_card),
                      ),
                    ), */
                    InkWell(
                      borderRadius: BorderRadius.circular(5),
                      onTap: () {
                        Get.toNamed('/confirmar-compra');
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: const Icon(
                            Icons.credit_card,
                            color: Colors.blue,
                          ),
                        ),
                        title: const Text(
                          'Efectivo',
                        ),
                        subtitle:
                            const Text('Pago en efectivo al recibir el pedido'),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black38,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Color de la sombra
                spreadRadius: 1, // Radio de propagación de la sombra
                blurRadius: 10, // Radio de desenfoque de la sombra
                offset: const Offset(0,
                    -5), // Desplazamiento de la sombra (positivo significa hacia abajo)
              ),
            ],
          ),
          child: const Row(
            children: [
              Text('Pagas', style: TextStyle(color: Colors.grey, fontSize: 18)),
              Spacer(),
              Text('S/ 100.00',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
