import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class FavoritoPage extends GetView {
  const FavoritoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favoritos'),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed('/search');
                },
                icon: const HugeIcon(
                    icon: HugeIcons.strokeRoundedSearch01,
                    color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: const HugeIcon(
                    icon: HugeIcons.strokeRoundedShoppingCart02,
                    color: Colors.black))
          ],
        ),
        body: const SafeArea(child: Text('FavoritoController')));
  }
}
