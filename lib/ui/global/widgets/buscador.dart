import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BuscadorPage extends GetView {
  String text;
  BuscadorPage(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () => {Get.toNamed('/search')},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18)),
          width: double.infinity,
          height: 35,
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.black54,
                size: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.black54, fontSize: 15),
              )
            ],
          )),
    );
  }
}
