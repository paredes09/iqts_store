import 'package:get/get.dart';

class SearchsController extends GetxController {
  final searchList = <String>[].obs;
  var search = ''.obs;
  final searchQuery = ''.obs;

  void clearResults() {
    searchList.clear();
    searchQuery.value = '';
  }

  void onSearch(String query) {
    searchQuery.value = query;
    if (query.isEmpty) {
      clearResults();
      return;
    }
    // Simulación de búsqueda asíncrona
    Future.delayed(const Duration(milliseconds: 300), () {
      // Lógica para obtener los resultados de búsqueda
      // Por ejemplo, una lista de strings simulada
      List<String> results = List.generate(100, (index) => 'Result $index')
          .where((result) => result.toLowerCase().contains(query.toLowerCase()))
          .toList();
      searchList.assignAll(results);
    });
  }

  // Define la función para establecer el texto de búsqueda
  void setSearchText(String searchText) {
    searchQuery.value = searchText;
  }
}
