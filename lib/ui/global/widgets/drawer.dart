import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class DrawerPage extends GetView {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> iconName = [
      {
        'icon': HugeIcons.strokeRoundedHome11,
        'name': 'Inicio',
        'route': "/home"
      },
      {
        'icon': HugeIcons.strokeRoundedSearch02,
        'name': 'Buscar',
        'route': "/search"
      },
      {
        'icon': HugeIcons.strokeRoundedNotification02,
        'name': 'Notificaciones',
        'route': "/search"
      },
      {
        'icon': HugeIcons.strokeRoundedShoppingBag03,
        'name': 'Mis compras',
        'route': "/compra"
      },
      {
        'icon': HugeIcons.strokeRoundedFavourite,
        'name': 'Favoritos',
        'route': "/search"
      },
      {
        'icon': HugeIcons.strokeRoundedUserSharing,
        'name': 'Mi cuenta',
        'route': "/user"
      },
      {
        'icon': HugeIcons.strokeRoundedLeftToRightListTriangle,
        'name': 'Categoria',
        'route': "/category"
      },
      {
        'icon': HugeIcons.strokeRoundedBook02,
        'name': 'Libro de Reclamaciones',
        'route': "/direcciones"
      },
      {
        'icon': HugeIcons.strokeRoundedCustomerSupport,
        'name': 'Ayuda',
        'route': "/search"
      },
      {
        'icon': HugeIcons.strokeRoundedLogout04,
        'name': 'Cerrar sesión',
        'route': "/login-principal"
      }
    ];

    return Drawer(
      backgroundColor: Colors.white,
      child: ListView.builder(
        itemCount: iconName.length + 1, // +1 para el DrawerHeader
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.yellow,
                border: Border(
                  bottom: BorderSide(color: Colors.black38),
                ),
              ),
              height: 170,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Image(
                              width: 35,
                              image: AssetImage('assets/perfil.png'),
                            )),
                        Expanded(
                          child: ListTile(
                            title: Text('Francisco',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black,
                                  size: 17,
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Calle Loreto 649, Iquitos',
                                      style: TextStyle(color: Colors.black),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              Get.toNamed('/user');
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              height: 35,
                              width: double.infinity,
                              child: const Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/cuenta.png'),
                                    width: 23,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Mi perfil',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                      color: Colors.black, size: 17)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          } else {
            final item = iconName[index - 1];
            return ListTile(
              leading: HugeIcon(
                icon: item['icon'],
                color: Colors.black87,
              ),
              title: Text(item['name'],
                  style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
              onTap: () {
                Get.toNamed(item['route']);
              },
            );
          }
        },
      ),
    );
  }
}
