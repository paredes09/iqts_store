import 'package:get/get.dart';
import 'package:iqts_store/src/bindings/category_binding.dart';
import 'package:iqts_store/src/bindings/compra_buiding.dart';
import 'package:iqts_store/src/bindings/contador_binding.dart';
import 'package:iqts_store/src/bindings/search_bindings.dart';
import 'package:iqts_store/src/bindings/user_binding.dart';
import 'package:iqts_store/src/bindings/venta_bindings.dart';
import 'package:iqts_store/ui/views/category/pages/category_page.dart';
import 'package:iqts_store/ui/views/compras/pages/compra_page.dart';
import 'package:iqts_store/ui/views/contador/pages/contador_page.dart';
import 'package:iqts_store/ui/views/home/pages/home_page.dart';
import 'package:iqts_store/ui/views/searcher/page/search_detalle_page.dart';
import 'package:iqts_store/ui/views/searcher/page/search_page.dart';
import 'package:iqts_store/ui/views/usuario/pages/user_page.dart';
import 'package:iqts_store/ui/views/vender/pages/venta_page.dart';
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
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => const CategoryPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
        name: Routes.SEARCH,
        page: () => const SearchPage(),
        binding: SearchBinding()),
    GetPage(
        name: Routes.VENTA,
        page: () => const VentaPage(),
        binding: VentaBinding()),
    GetPage(
        name: Routes.COMPRA,
        page: () => const CompraPage(),
        binding: CompraBinding()),
    GetPage(
        name: Routes.USER,
        page: () => const UserPage(),
        binding: UserBinding()),
    GetPage(
        name: Routes.SEARCH_DETALLE,
        page: () => const SearchDetallePage(),
        binding: UserBinding())
  ];
}
