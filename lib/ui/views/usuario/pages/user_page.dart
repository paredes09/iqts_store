import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
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
                      'Mis compras',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedShoppingBag01,
                          color: Colors.white), () {
                    Get.toNamed('/compra');
                  }, null),
                  listTitleOpciones(
                      'Preguntas',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedComment02,
                          color: Colors.white),
                      () {},
                      null),
                  listTitleOpciones(
                      'Mis opiniones',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedStar,
                          color: Colors.white),
                      () {},
                      null),
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
                      'Mi perfil',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedUser,
                          color: Colors.black),
                      () {},
                      Colors.grey[200]),
                  listTitleOpciones(
                      'Direcciones',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedMosqueLocation,
                          color: Colors.black), () {
                    Get.toNamed('/direcciones');
                  }, Colors.grey[200]),
                  listTitleOpciones(
                      'Ajustes',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedSettings02,
                          color: Colors.black),
                      () {},
                      Colors.grey[200]),
                  listTitleOpciones(
                      'Ayuda',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedCustomerSupport,
                          color: Colors.black),
                      () {},
                      Colors.grey[200]),
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  listTitleOpciones(
                      'Cerrar sesión',
                      const HugeIcon(
                          icon: HugeIcons.strokeRoundedLogout04,
                          color: Colors.black),
                      () {},
                      Colors.grey[200]),
                ],
              ),
            ],
          ),
        ));
  }
}
