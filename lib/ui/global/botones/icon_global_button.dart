import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

IconButton iconGlobalButton(
    IconData? icon, Function()? onPressed, Color color) {
  return IconButton(
    icon: HugeIcon(icon: icon!, color: color),
    onPressed: onPressed,
  );
}
