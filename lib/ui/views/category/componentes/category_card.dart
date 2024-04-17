import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardCategory extends GetView {
  const CardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 120,
      child: Card(
        elevation: 4,
        color: const Color.fromARGB(228, 255, 255, 255),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 75,
              child: SizedBox(
                  width: 60,
                  child: Image(image: AssetImage('assets/llanta.png'))),
            ),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: const Wrap(
                      runAlignment: WrapAlignment.center,
                      children: [
                        Text('Accesorios para vehículos',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11))
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
