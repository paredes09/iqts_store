import 'package:get/get.dart';
import 'package:iqts_store/src/controllers/login_controllers.dart';
import 'package:iqts_store/ui/global/widgets/circle_indicator.dart';

class CompraController extends GetxController {
  final LoginController loginController = Get.find<LoginController>();
  var isLoading = false.obs;
  
  void initState() {
    loginController.user.listen((user) {});
  }

  redirigir() {
    // Mostrar el indicador de carga
    Future.delayed(const Duration(seconds: 2), () {
      // Después de 2 segundos, redirigir a la nueva página
      Get.toNamed('/login-principal');
    });

    // Retorna el globalCircleIndicator como widget
    return globalCircleIndicator();
  }
}
