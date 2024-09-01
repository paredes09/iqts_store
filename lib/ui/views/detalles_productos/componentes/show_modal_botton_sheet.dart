import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/global/botones/elevate.dart';

InkWell bottonShet(int images, BuildContext context) {
  return InkWell(
    borderRadius: BorderRadius.circular(5),
    onTap: () => {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              height: images * 50 + 50,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Elige cantidad',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Expanded(
                      child: LayoutBuilder(builder: (context, constraints) {
                        final availableHeight = constraints.maxHeight;
                        final itemHeight = (availableHeight - 100) ~/ 30;
                        if (images < 8) {
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: images,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: Center(
                                      child: Text(
                                          '${index + 1} ${index + 1 > 1 ? 'unidades' : 'unidad'}'),
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          // If there are more items than the available space, show items up to the available space and add "Ver más" option
                          return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: itemHeight - 1,
                              itemBuilder: (context, index) {
                                if (index == itemHeight - 2) {
                                  // "Ver más" option
                                  return InkWell(
                                    onTap: () => {
                                      Navigator.pop(context),
                                      showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (context) {
                                            return SingleChildScrollView(
                                              child: AnimatedPadding(
                                                duration: const Duration(
                                                    milliseconds: 140),
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        MediaQuery.of(context)
                                                            .viewInsets
                                                            .bottom),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 200,
                                                  decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(20),
                                                              topRight: Radius
                                                                  .circular(
                                                                      20))),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      ListTile(
                                                        title: const Text(
                                                          'Elige cantidad',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        subtitle: Text(
                                                            '$images disponibles'),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 16),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            TextFormField(
                                                              decoration:
                                                                  const InputDecoration(
                                                                      hintText:
                                                                          'Cantidad'),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                            ),
                                                            const SizedBox(
                                                              height: 20,
                                                            ),
                                                            elevateButton(
                                                                'Agregar cantidad',
                                                                () => {
                                                                      Get.toNamed(
                                                                          '/metodo-entrega'),
                                                                    })
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          })
                                    },
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                          child: Center(
                                            child:
                                                Text('Más de $index unidades'),
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  // Displaying available quantities
                                  return Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                              '${index + 1} ${index + 1 > 1 ? 'unidades' : 'unidad'}'),
                                        ),
                                      ),
                                      const Divider(
                                        thickness: 1,
                                      ),
                                    ],
                                  );
                                }
                              });
                        }
                      }),
                    ),
                  ]),
            );
          })
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Cantidad: $images'),
              const SizedBox(
                width: 20,
              ),
              Text(
                '($images disponibles)',
                style: const TextStyle(color: Colors.black38),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 17,
            color: Colors.blue,
          )
        ],
      ),
    ),
  );
}
