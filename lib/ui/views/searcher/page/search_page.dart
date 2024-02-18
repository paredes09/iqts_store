import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/search_controllers.dart';

class SearchPage extends GetView<SearchsController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Buscar')),
        body: const SafeArea(child: Center(child: Text('MyController'))));
  }
}
