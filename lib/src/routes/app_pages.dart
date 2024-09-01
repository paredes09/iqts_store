import 'package:get/get.dart';
import 'package:iqts_store/src/routes/barrel.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      transition: Transition.upToDown,
      transitionDuration: const Duration(milliseconds: 300),
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
        name: Routes.compra,
        transitionDuration: const Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        page: () => const CompraPage(),
        binding: CompraBinding()),
    GetPage(
      transitionDuration: const Duration(milliseconds: 300),
      transition: Transition.rightToLeft,
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
        page: () => const ConfirmarCompraPage()),
    GetPage(
        name: Routes.estadoCompra,
        transitionDuration: const Duration(milliseconds: 300),
        transition: Transition.rightToLeft,
        page: () => const EstadoCompraPage()),
    GetPage(
        name: Routes.detalleCompra,
        page: () => DetalleCompraPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: Routes.logiPrincipal,
        page: () => const LoginPrincipalPage(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: Routes.favorito,
        page: () => const FavoritoPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 300))
  ];
}
