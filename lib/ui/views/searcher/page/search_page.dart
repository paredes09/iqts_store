import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/search_controllers.dart';

class SearchPage extends GetView<SearchsController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          actions: [
            IconButton(
              onPressed: () {
                controller.clearResults();
                textController.clear(); // Limpiar el texto del TextField
              },
              icon: const Icon(Icons.clear),
            ),
          ],
          title: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) => Get.toNamed('/search-detalle'),
            onChanged: (value) => {controller.onSearch(value)},
            controller: textController,
            autofocus: true,
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Buscar en Iqts Store',
              hintStyle: TextStyle(color: Colors.white),
            ),
          )),
      body: Obx(() {
        final searchList = controller.searchList;
        return searchList.isEmpty
            ? const Center(child: Text('No hay resultados de búsqueda'))
            : ListView.builder(
                itemCount: searchList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      final selectedName =
                          searchList[index]; // Nombre seleccionado
                      controller.setSearchText(
                          selectedName); // Establecer el texto de búsqueda
                      controller.onSearch(selectedName);
                      Get.toNamed('/search-detalle');
                    },
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    leading: const Icon(Icons.search),
                    title: Text(searchList[index]),
                    trailing: const Icon(
                      Icons.arrow_outward_sharp,
                    ),
                  );
                },
              );
      }),
    );
  }
}
