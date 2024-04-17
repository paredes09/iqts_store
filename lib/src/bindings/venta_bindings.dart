import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/venta_controllers.dart';

class VentaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VentaController>(() => VentaController());
  }
}
