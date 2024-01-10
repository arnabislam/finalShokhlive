import 'package:get/get.dart';

import '../controllers/utils_controller.dart';

class UtilsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UtilsController>(
      () => UtilsController(),
    );
  }
}
