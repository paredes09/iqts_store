import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/login_controllers.dart';
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
    initialBinding: BindingsBuilder(() {
      Get.put(LoginController()); // Instanciar el controlador al inicio
    }),
    defaultTransition: Transition.native,
    getPages: AppPages.pages,
  ));
}
