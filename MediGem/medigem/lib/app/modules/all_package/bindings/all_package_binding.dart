import 'package:get/get.dart';

import '../controllers/all_package_controller.dart';

class AllPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllPackageController>(
      () => AllPackageController(),
    );
  }
}
