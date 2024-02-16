import 'package:get/get.dart';
import 'package:iqts_store/src/bindings/contador_binding.dart';
import 'package:iqts_store/ui/views/contador/pages/contador_page.dart';
import 'package:iqts_store/ui/views/home/pages/home_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      transition: Transition.native,
    ),
    GetPage(
      name: Routes.CONTADOR,
      page: () => const ContadorPage(),
      binding: ContadorBinding(),
    )
  ];
}
