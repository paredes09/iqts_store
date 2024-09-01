import 'package:flutter/material.dart';

Card detalleCompra() {
  return const Card(
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('12 de abril | #1234567890'),
            Divider(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Producto'),
                Text('S/. 84.99'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Envío'),
                Text('S/.8.90'),
              ],
            ),
            Divider(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pago',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'S/.8.90',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Yape',
                        style: TextStyle(color: Colors.grey, fontSize: 12))
                  ],
                )
              ],
            ),
            Divider(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text('93.89'),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
