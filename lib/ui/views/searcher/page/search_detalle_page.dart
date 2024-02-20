import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/search_controllers.dart';
import 'package:iqts_store/ui/global/widgets/buscador.dart';
import 'package:iqts_store/ui/global/widgets/drawer.dart';
import 'package:iqts_store/ui/views/searcher/componentes/searh_product_card.dart';

class SearchDetallePage extends GetView<SearchsController> {
  const SearchDetallePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Obx(() => Text(controller.searchQuery.value)
        appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: Obx(() {
              final searchQuery = controller.searchQuery.value;
              return searchQuery.isNotEmpty
                  ? BuscadorPage(searchQuery)
                  : BuscadorPage('Buscar...');
            })),
        drawer: const DrawerPage(),
        body: Obx(() {
          final searchList = controller.searchList;
          return searchList.isEmpty
              ? const Center(child: Text('No hay resultados de búsqueda'))
              : ListView.builder(
                  itemCount: searchList.length,
                  itemBuilder: (context, index) {
                    return ShearhProductPage(searchList[index]);
                  },
                );
        }));
  }
}
