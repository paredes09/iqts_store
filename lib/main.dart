import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/bindings/home_binding.dart';
import 'package:iqts_store/src/routes/app_pages.dart';
import 'package:iqts_store/ui/global/colores/themes/dark_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.home,
    initialBinding: HomeBinding(),
    defaultTransition: Transition.native,
    getPages: AppPages.pages,
  ));
}
