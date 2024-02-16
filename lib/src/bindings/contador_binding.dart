import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/contador_controllers.dart';

class ContadorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContadorController>(() => ContadorController());
  }
}
