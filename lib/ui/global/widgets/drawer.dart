import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/src/controllers/login_controllers.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';

class DrawerPage extends GetView<LoginController> {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController());
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
      /*  if (controller.user.value != null)
        {
          'icon': HugeIcons.strokeRoundedLogout04,
          'name': 'Cerrar sesión',
          'action': () {
            controller.signOutGoogle();
          }
        } */
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
                    bottom: BorderSide(color: Colors.black26),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 10),
                  child: Obx(() {
                    if (controller.user.value != null) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(23),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                      controller.user.value!.photoURL ??
                                          'https://pngfreepic.com/wp-content/uploads/2022/09/a95fe6f8-350x350.png?v=1665029681',
                                    ))),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                      controller.user.value!.displayName!
                                          .split(' ')
                                          .take(2)
                                          .join(' '),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.black,
                                        size: 16,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            'Calle Loreto 649, Iquitos',
                                            style:
                                                TextStyle(color: Colors.black),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    height: 35,
                                    width: double.infinity,
                                    child: const Row(
                                      children: [
                                        Image(
                                          image:
                                              AssetImage('assets/cuenta.png'),
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
                                        HugeIcon(
                                          icon: HugeIcons
                                              .strokeRoundedArrowRight01,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      );
                    } else {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 43,
                                  width: 43,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black38,
                                        width: 1.5,
                                      )),
                                  child: const HugeIcon(
                                      icon: HugeIcons.strokeRoundedUserAccount,
                                      color: Colors.black38)),
                              const Expanded(
                                child: ListTile(
                                  title: Text('Ingresa a tu cuenta',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                    'Podrás ver detalles de tus compras y perzonalizar tu experiencia.',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 11),
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
                                  child: SizedBox(
                                height: 40,
                                child: elevateButton(
                                    'Ingresar',
                                    () => {
                                          Get.toNamed('/login-principal'),
                                        }),
                              ))
                            ],
                          )
                        ],
                      );
                    }
                  }),
                ));
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
                if (item['route'] != null) {
                  Get.toNamed(item['route']);
                } else if (item['action'] != null) {
                  item['action']();
                }
              },
            );
          }
        },
      ),
    );
  }
}
