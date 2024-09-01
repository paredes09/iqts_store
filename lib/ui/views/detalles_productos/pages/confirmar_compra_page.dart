import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';
import 'package:iqts_store/ui/views/detalles_productos/componentes/detalles_compra.dart';

class ConfirmarCompraPage extends GetView {
  const ConfirmarCompraPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TextController());
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: controller
              ._scrollController, //CONTROLADOR PARA QUE APAREZCA EL TEXTO DESPUES DE HACER SCROLL EN EL APPBAR

          dragStartBehavior: DragStartBehavior.down,
          slivers: [
            SliverAppBar(
              title: Obx(() {
                return AnimatedOpacity(
                  opacity: controller.showTitle ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 100),
                  child: const Text(
                    'Confirma tu compra',
                  ),
                );
              }),
              pinned: true,
              expandedHeight: 330,
              //FlexibleSpaceBar
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.only(top: statusBarHeight),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Confirma tu compra',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Producto: ',
                                  style: TextStyle(fontSize: 18)),
                              Text(
                                'S/ 109.00',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Envio: ', style: TextStyle(fontSize: 18)),
                              Text(
                                'Gratis',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 30,
                            thickness: 1,
                            color: Colors.black54,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pagas: ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'S/ 109.00',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          elevateButton('Confirmar compra', () {}),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      detallesCompra(
                          'Pack X12 Trusas Boston 100% Algodon, Por un precio de Oferta',
                          'assets/cuenta.png',
                          'Color: Negro, Talla: L, Cantidad: 1'),
                      const Divider(),
                      detallesCompra('Calle Loreto 749 - 1', 'assets/carro.png',
                          'Frente al jardin boniffati - Iquitos - Mayanas, \n aroldo francisco - 935827864'),
                      const Divider(),
                      detallesCompra(
                          'Pago por efectivo \n Paga S/. 109.00',
                          'assets/pago.png',
                          'Pago contra entrega, realiza el pago con el vendedor \n a la entrega de tu producto.'),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 30, top: 15, left: 20, right: 20),
                        child: elevateButton('confirmar Compra', () {
                          Get.toNamed('/confirmar-compra');
                        }),
                      )
                    ],
                  );
                },
                childCount: 1,
              ),
            )
          ],
        ));
  }
}

//CONTROLADOR PARA QUE APAREZCA EL TEXTO DESPUES DE HACER SCROLL EN EL APPBAR
class TextController extends GetxController {
  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 0.0,
  );

  RxBool sshowTitle = false.obs;
  bool get showTitle => sshowTitle.value;

  @override
  void onInit() {
    _scrollController.addListener(() {
      final newShowTitle = _scrollController.offset > 270;

      if (sshowTitle.value != newShowTitle) {
        sshowTitle.value = newShowTitle;
      }
    });

    super.onInit();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
