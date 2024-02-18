import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerPage extends GetView {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> iconName = [
      {'icon': Icons.home_outlined, 'name': 'Inicio', 'route': "/home"},
      {'icon': Icons.search, 'name': 'Buscar', 'route': "/search"},
      {
        'icon': Icons.local_grocery_store_outlined,
        'name': 'Mis compras',
        'route': "/compra"
      },
      {
        'icon': Icons.account_circle_outlined,
        'name': 'Mi cuenta',
        'route': "/user"
      },
      {
        'icon': Icons.article_outlined,
        'name': 'Categoria',
        'route': "/category"
      },
      {'icon': Icons.discount_outlined, 'name': 'Vender', 'route': "/venta"}
    ];

    return Drawer(
      child: ListView.builder(
        itemCount: iconName.length + 1, // +1 para el DrawerHeader
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 238, 220, 20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Francisco'),
                          subtitle: Text('Mi perfil >'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            final item = iconName[index - 1];
            return ListTile(
              leading: Icon(item['icon']),
              title: Text(item['name']),
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
