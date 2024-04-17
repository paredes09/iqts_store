import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/search_controllers.dart';

class SearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchsController>(() => SearchsController());
  }
}
