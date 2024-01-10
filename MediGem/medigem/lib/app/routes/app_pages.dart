import 'package:get/get.dart';

import '../modules/all_package/bindings/all_package_binding.dart';
import '../modules/all_package/views/all_package_view.dart';
import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/auth/views/bottom_navigation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mcq_package/bindings/mcq_package_binding.dart';
import '../modules/mcq_package/views/mcq_package_view.dart';
import '../modules/utils/bindings/utils_binding.dart';
import '../modules/utils/views/utils_view.dart';
import '../modules/widgets/bindings/widgets_binding.dart';
import '../modules/widgets/views/widgets_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const BottomNavigationView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.WIDGETS,
      page: () => const WidgetsView(),
      binding: WidgetsBinding(),
    ),
    GetPage(
      name: _Paths.ALL_PACKAGE,
      page: () => const AllPackageView(),
      binding: AllPackageBinding(),
    ),
    GetPage(
      name: _Paths.UTILS,
      page: () => const UtilsView(),
      binding: UtilsBinding(),
    ),
    GetPage(
      name: _Paths.MCQ_PACKAGE,
      page: () => const McqPackageView(),
      binding: McqPackageBinding(),
    ),
  ];
}
