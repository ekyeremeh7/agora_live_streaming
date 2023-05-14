import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
     Get.put(AuthController());
    // Get.lazyPut(() => ProfileViewController());
  }
}
