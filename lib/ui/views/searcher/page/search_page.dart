import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iqts_store/src/controllers/search_controllers.dart';
import 'package:iqts_store/ui/global/botones/icon_global_button.dart';

class SearchPage extends GetView<SearchsController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              style: const ButtonStyle(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent)),
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black38,
              )),
          elevation: 2,
          shadowColor: Colors.white,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.white, // Color del borde inferior
              width: 2,

              // Grosor del borde
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            iconGlobalButton(HugeIcons.strokeRoundedCancel01, () {
              textController.clear();
              controller.searchList();
            }, Colors.black38),
          ],
          title: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) => Get.toNamed('/search-detalle'),
            onChanged: (value) => {controller.onSearch(value)},
            controller: textController,
            autofocus: true,
            cursorColor: Colors.black38,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Buscar en Iqts Store',
              hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
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
