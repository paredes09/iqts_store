import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/home_controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
