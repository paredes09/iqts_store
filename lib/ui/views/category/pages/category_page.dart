import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/category_controllers.dart';
import 'package:iqts_store/ui/views/category/componentes/category_card.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 246, 242),
        appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: const Text('Categorías')),
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 2,
          children: const [
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
            CardCategory(),
          ],
        ));
  }
}
