import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/category_controllers.dart';

class CategoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(() => CategoryController());
  }
}
