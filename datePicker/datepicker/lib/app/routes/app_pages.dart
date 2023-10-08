import 'package:get/get.dart';

import '../modules/date/bindings/date_binding.dart';
import '../modules/date/views/date_view.dart';
import '../modules/delivery/bindings/delivery_binding.dart';
import '../modules/delivery/views/delivery_view.dart';
import '../modules/home/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const DateView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DATE,
      page: () => const DateView(),
      binding: DateBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY,
      page: () => const DeliveryView(),
      binding: DeliveryBinding(),
    ),
  ];
}
