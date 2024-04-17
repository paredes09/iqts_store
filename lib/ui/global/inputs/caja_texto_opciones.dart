import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget cajaTextoOpciones(String texto) {
  const List<String> list = <String>[
    'One',
    'Two',
    'Three',
    'Four',
    'Three',
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: Text(texto),
      ),
      DropdownMenu(
        expandedInsets: const EdgeInsets.all(0),
        onSelected: (list) => {},
        enableSearch: true,
        enableFilter: true,
        trailingIcon: const Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.grey,
        ),
        selectedTrailingIcon: const Icon(
          Icons.keyboard_arrow_up_sharp,
          color: Colors.black,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 17.0, horizontal: 10.0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(width: 1, color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 2,
              color:
                  Colors.blue.shade500, // Color de borde cuando está enfocado
            ),
          ),
        ),
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(
              value: value,
              label: value,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ));
        }).toList(),
      ),
    ],
  );
}

class MyController extends GetxController {
  RxBool vision = false.obs;

  void toggleVision() {
    vision.value = !vision.value;
    if (vision.value) {
      const Duration(milliseconds: 1000);
    }
  }
}
