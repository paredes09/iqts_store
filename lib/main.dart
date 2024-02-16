import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/bindings/home_binding.dart';
import 'package:iqts_store/src/routes/app_pages.dart';
import 'package:iqts_store/ui/global/colores/themes/dark_theme.dart';

void main() async {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.HOME,
    initialBinding: HomeBinding(),
    defaultTransition: Transition.native,
    getPages: AppPages.pages,
  ));
}
