import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/compra_controllers.dart';

class CompraBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompraController>(() => CompraController());
  }
}
