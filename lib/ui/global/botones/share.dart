import 'package:flutter/material.dart';

TextButton sharedButton() {
  return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.share),
      label: const Text('Compartir'));
}
