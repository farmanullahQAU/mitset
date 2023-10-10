import 'package:code_symmetry/app/modules/home/controllers/pricing_controller.dart';
import 'package:code_symmetry/app/modules/home/controllers/serviceview_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ServiceViewController>(() => ServiceViewController());
    Get.lazyPut<PricingViewController>(() => PricingViewController());
  }
}
