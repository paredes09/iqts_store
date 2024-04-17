import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/user_controllers.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';
import 'package:iqts_store/ui/views/usuario/componentes/opciones.dart';

class UserPage extends GetView<UserController> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Mi cuenta')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: elevateButton('Vender', '/metodo-entrega')),
              const Divider(
                thickness: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text('Compras'),
                  ),
                  listTitleOpciones(
                      'Mis compras', const Icon(Icons.shopping_bag)),
                  listTitleOpciones(
                      'Mis devoluciones', const Icon(Icons.refresh)),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text('Ventas'),
                  ),
                  listTitleOpciones('Resumen', const Icon(Icons.summarize)),
                  listTitleOpciones(
                      'Publicaciones', const Icon(Icons.sell_rounded)),
                  listTitleOpciones('Ventas', const Icon(Icons.store)),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text('Configuración'),
                  ),
                  listTitleOpciones(
                      'Datos personales', const Icon(Icons.person)),
                  listTitleOpciones(
                      'Direcciones', const Icon(Icons.location_on)),
                  listTitleOpciones(
                      'Métodos de pago', const Icon(Icons.payment)),
                  listTitleOpciones(
                      'Notificaciones', const Icon(Icons.notifications)),
                  listTitleOpciones('Seguridad', const Icon(Icons.security)),
                ],
              ),
            ],
          ),
        ));
  }
}
