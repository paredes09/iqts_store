import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ShearhProductPage extends GetView {
  String titulo;
  ShearhProductPage(this.titulo, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(227, 216, 83, 83),
                      borderRadius: BorderRadius.circular(3)),
                  width: 150,
                  height: 140,
                  child: const Image(image: AssetImage('assets/llanta.png')),
                )
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('S/. 109'),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Envio gratis'),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
