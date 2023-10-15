import 'package:get/get.dart';

import '../controllers/start_a_match_controller.dart';

class StartAMatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartAMatchController>(
      () => StartAMatchController(),
    );
  }
}
