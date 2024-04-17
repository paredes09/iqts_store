import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/user_controllers.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
  }
}
