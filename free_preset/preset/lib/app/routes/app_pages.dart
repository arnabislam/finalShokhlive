import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/start_a_match/bindings/start_a_match_binding.dart';
import '../modules/start_a_match/views/start_a_match_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.START_A_MATCH,
      page: () => const StartAMatchView(),
      binding: StartAMatchBinding(),
    ),
  ];
}
