import 'package:code_symmetry/app/modules/home/views/pricing.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/app_bindings.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/services.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: AppBindings(),
    ),
    GetPage(
        name: _Paths.SERVICE,
        page: () => const OurservicesDetailsPage(),
        binding: AppBindings()),
    GetPage(
        name: _Paths.PRICING,
        page: () =>  PricingPageView(),
        binding: AppBindings()),
  ];
}
