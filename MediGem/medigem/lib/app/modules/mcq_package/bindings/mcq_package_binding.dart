import 'package:get/get.dart';

import '../controllers/mcq_package_controller.dart';

class McqPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<McqPackageController>(
      () => McqPackageController(),
    );
  }
}
