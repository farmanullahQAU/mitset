import 'package:code_symmetry/app/models/devservice_model.dart';
import 'package:code_symmetry/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  bool isHovered = false;
  int selectedIndex = 0;

  final List<String> items = [
    'Home',
    'Services',
    'Pricing',
    'About us',
    "Careers"
  ];

  late ServiceModel currentService;

  @override
  void onInit() {
    initDevServices();

    currentService = servicesList.first;
    super.onInit();
  }

  late List<ServiceModel> servicesList;

  void initDevServices() {
    servicesList = [
      ServiceModel(
        icon: "assets/images/mobile_dev.png",
        title: "Android & iOS",
        subtitle: "Native-quality mobile apps.",
      ),
      ServiceModel(
        title: "Web apps",
        subtitle: "Responsive, cross-platform web applications.",
        icon: "assets/images/web_dev.png",
      ),
      ServiceModel(
          title: "Desktop",
          subtitle: "Windows, macOS, and Linux solutions.",
          icon: "assets/images/web_dev.png"),
      ServiceModel(
          title: "macOS",
          subtitle: "Elegant applications for Apple's desktop",
          icon: "assets/images/mobile_dev.png"),
      ServiceModel(
          title: "Linux",
          subtitle: "Open-source, cross-platform software.",
          icon: "assets/images/mobile_dev.png"),
    ];
  }

  onTapService(ServiceModel service) {
    currentService = service;

    update(["services"]);
  }

  void onNavTap(int key) {
    if (key == 2) {
      Get.toNamed(Routes.PRICING);
    }
    selectedIndex = key;
    update(["navBar"]);
  }
}
