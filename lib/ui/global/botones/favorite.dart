import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextButton favoriteButton() {
  final controller = Get.put(FavoriteController());
  return TextButton.icon(
      onPressed: () {
        controller.toggleFavorite();
      },
      icon: Obx(() => Icon(
            controller.isFavorite.value
                ? Icons.favorite
                : Icons.favorite_border,
          )),
      label: Obx(() => Text(controller.isFavorite.value
          ? 'Remover de favoritos'
          : 'Agregar a favoritos')));
}

class FavoriteController extends GetxController {
  RxBool isFavorite = false.obs;
  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
    /*  if (isFavorite.value) {
      Get.snackbar('Agregado a favoritos', 'Producto agregado a favoritos',
          duration: duration);
    } else {
      Get.snackbar('Removido de favoritos', 'Producto removido de favoritos',
          duration: duration);
    }
    */
  }
}
