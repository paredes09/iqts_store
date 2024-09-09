import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/ui/global/botones/text_global_button.dart';

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
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(15),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.22,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/ejemplo.webp'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.22,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'Camisera Reductora Faja Remodela Abdomen Vividi Hombres Bvd',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3),
                              Text('Por cadi',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 12)),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'S/. 50.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500,
                                    fontSize: 12, // Tamaño de la fuente
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey
                                        .shade500 // Línea para tachar el texto
                                    ),
                              ),
                              const Text('S/. 100.00',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              const Spacer(),
                              SizedBox(
                                  height: 14,
                                  width: 45,
                                  child: globalTextButton(() {}, 'Eliminar')),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.grey.shade200,
              ),
            ],
          ),
        )));
  }
}
