import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/src/controllers/producto_controller.dart';
import 'package:iqts_store/src/routes/app_pages.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';
import 'package:iqts_store/ui/global/botones/favorite.dart';
import 'package:iqts_store/ui/global/botones/share.dart';
import 'package:iqts_store/ui/global/widgets/buscador.dart';
import 'package:iqts_store/ui/global/widgets/drawer.dart';
import 'package:iqts_store/ui/views/detalles_productos/componentes/botton_detalles.dart';
import 'package:iqts_store/ui/views/detalles_productos/componentes/show_modal_botton_sheet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductoPage extends GetView<ProductoController> {
  const ProductoPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z6Z9Q6",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z6Z9Q6",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Z6Z9Q6",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
      "https://wallpaperaccess.com/full/2637581.jpg",
    ];
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          //backgroundColor: Colors.amberAccent,
          title: BuscadorPage(
            'Buscar en IQTS Store',
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: Container(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HugeIcon(
                        size: 15,
                        icon: HugeIcons.strokeRoundedLocation04,
                        color: Colors.black),
                    SizedBox(width: 10),
                    Text('Calle Loreto 679',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                    HugeIcon(
                        size: 15,
                        icon: HugeIcons.strokeRoundedArrowRight01,
                        color: Colors.black)
                  ],
                ),
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const HugeIcon(
                    icon: HugeIcons.strokeRoundedShoppingCart02,
                    color: Colors.black))
          ],
        ),
        drawer: const DrawerPage(),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 5),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Usado | +5  ventas'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Imagenes HD 4K para prueba de pantalla de la app de IQTS Store',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              //color: Colors.black12,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              child: Stack(
                children: [
                  slider.CarouselSlider(
                    options: slider.CarouselOptions(
                        enableInfiniteScroll: false,
                        onPageChanged: controller.onCarouselPageChanged,
                        enlargeCenterPage: false,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1),
                    items: images
                        .map((item) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                              ),
                            ))
                        .toList(),
                  ),
                  Positioned(
                      left: 20,
                      child: Container(
                          width: images.length < 9 ? 37 : 44,
                          height: 23,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade50,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Obx(() => Text(
                                  '${controller.totalPages}/${images.length}'))))),
                ],
              ),
            ),
            Center(
              child: Obx(() => SmoothPageIndicator(
                  controller: PageController(
                      initialPage: controller.currentIndex.value),
                  count: images.length,
                  effect: const ScrollingDotsEffect(
                    activeDotScale: 2.0,
                    dotColor: Colors.black12,
                    activeDotColor: Color.fromARGB(255, 0, 140, 255),
                    dotHeight: 5,
                    dotWidth: 5,
                    spacing: 8,
                  ))),
            ),

            Container(
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'S/. 38',
                      style: TextStyle(fontSize: 40),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Llega gratis entre el miercoles y jueves'),
                    const SizedBox(
                      height: 20,
                    ),
                    bottonShet(images.length, context),
                    const SizedBox(
                      height: 30,
                    ),
                    elevateButton('Comprar ahora', '/metodo-entrega'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Vendido Por PRUEBADEPANTALLA'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [favoriteButton(), sharedButton()],
                        )
                      ],
                    ),
                    const Text('Guia de tallas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(
                      height: 20,
                    ),
                    Table(
                      border: TableBorder.all(
                          color: const Color.fromARGB(255, 255, 254, 254)),
                      columnWidths: const {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(1),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
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
                              child:
                                  const Text('S', textAlign: TextAlign.center),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text('85-89',
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          TableCell(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.grey[200],
                              child:
                                  const Text('M', textAlign: TextAlign.center),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.grey[200],
                              child: const Text('90-94',
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ]),
                        // Agrega más filas según sea necesario
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    getBottonDetalles(Routes.guiaTalla),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Caracteristicas del producto',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.grey[200],
                              child: const Icon(Icons.discount_outlined),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text('Marca: Generico'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.grey[200],
                              child: const Icon(Icons.shopping_bag_sharp),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text('Material principal: Algodon'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    getBottonDetalles(Routes.caracteristicas),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Descripción',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                      'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      textAlign: TextAlign.justify,
                    ),
                  ],
                )),
            //const Divider(
            //  thickness: 1,
            //)
          ],
        ));
  }
}
