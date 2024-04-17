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
import 'package:iqts_store/ui/views/detalles_productos/pages/caracteristicas_page.dart';
import 'package:iqts_store/ui/views/detalles_productos/pages/confirmar_compra_page.dart';
import 'package:iqts_store/ui/views/detalles_productos/pages/guia_talla_page.dart';
import 'package:iqts_store/ui/views/detalles_productos/pages/metodo_entrega_page.dart';
import 'package:iqts_store/ui/views/home/pages/home_page.dart';
import 'package:iqts_store/ui/views/searcher/page/search_detalle_page.dart';
import 'package:iqts_store/ui/views/searcher/page/search_page.dart';
import 'package:iqts_store/ui/views/usuario/pages/configuraciones/agregar_direcciones.dart';
import 'package:iqts_store/ui/views/usuario/pages/configuraciones/direcciones.dart';
import 'package:iqts_store/ui/views/usuario/pages/user_page.dart';
import 'package:iqts_store/ui/views/vender/pages/venta_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: Transition.native,
    ),
    GetPage(
      name: Routes.contador,
      page: () => const ContadorPage(),
      binding: ContadorBinding(),
    ),
    GetPage(
      name: Routes.category,
      page: () => const CategoryPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
        name: Routes.search,
        page: () => const SearchPage(),
        binding: SearchBinding()),
    GetPage(
        name: Routes.venta,
        page: () => const VentaPage(),
        binding: VentaBinding()),
    GetPage(
        name: Routes.compra,
        page: () => const CompraPage(),
        binding: CompraBinding()),
    GetPage(
        name: Routes.user,
        page: () => const UserPage(),
        binding: UserBinding()),
    GetPage(
        name: Routes.searchDetalle,
        page: () => const SearchDetallePage(),
        binding: UserBinding()),
    GetPage(
      transitionDuration: const Duration(milliseconds: 300),
      transition: Transition.rightToLeft,
      name: Routes.guiaTalla,
      page: () => const GuiaPage(),
    ),
    GetPage(
      transitionDuration: const Duration(milliseconds: 300),
      transition: Transition.rightToLeft,
      name: Routes.caracteristicas,
      page: () => const CaracteristicasPage(),
    ),
    GetPage(
        transitionDuration: const Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: Routes.addDirecciones,
        page: () => const AggDireccionesPage()),
    GetPage(name: Routes.direcciones, page: () => const DireccionesPage()),
    GetPage(
      transitionDuration: const Duration(milliseconds: 300),
      transition: Transition.rightToLeft,
      name: Routes.metodoEntrega,
      page: () => const MetodoEntregaPage(),
    ),
    GetPage(
        transitionDuration: const Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        name: Routes.confirmarCompra,
        page: () => const ConfirmarCompraPage())
  ];
}
