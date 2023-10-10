import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:code_symmetry/app/models/devservice_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceViewController extends GetxController {
  late ScrollController? scrollController;
  double? pixels = 0.0;

  String desc =
      "We are your one-stop solution for crafting exceptional digital experiences across various platforms. Our versatile expertise in Flutter development empowers us to deliver cutting-edge applications that are beautiful, efficient, and cross-platform compatible. Explore our comprehensive suite of services:";
  @override
  void onInit() {
    scrollController = ScrollController();

    scrollController?.addListener(() {
      pixels = scrollController?.position.pixels;
      update(["services"]);
    });

    initDevServices();

    super.onInit();
  }

  late List<ServiceModel> servicesList;

  void initDevServices() {
    servicesList = [
      ServiceModel(
          icon: "assets/images/mobile_dev.png",
          title: "Android App Development:",
          description: [
            "Create feature-rich, native-quality Android applications with Flutter",
            "Ensure compatibility with a wide range of Android devices, from smartphones to tablets",
            "Deliver outstanding performance, UI/UX, and functionality on the Android platform."
          ]),
      ServiceModel(
        title: "Web apps",
        icon: "assets/images/web_dev.png",
        description: [
          "Leverage the power of Flutter web to build stunning, responsive web applications.",
          "Seamlessly integrate your web presence with your mobile and desktop apps for a unified user experience",
          "Unlock the potential of web technologies with our expert developers."
        ],
      ),
      ServiceModel(
          title: "iOS App Development",
          icon: "assets/images/web_dev.png",
          description: [
            "Reach the thriving iOS user base with Flutter's capabilities.",
            "Develop iOS apps that mirror the quality and performance of native applications.",
            "Guarantee compatibility with the latest iOS devices and versions."
          ]),
      ServiceModel(
          title: "Desktop Application Development",
          description: [
            "Extend your software offerings to desktop platforms (Windows, macOS, Linux) using Flutter.",
            "Provide users with a consistent experience across desktop and mobile environments.",
            "Seamlessly integrate with the native features of each operating system."
          ],
          icon: "assets/images/mobile_dev.png"),
      ServiceModel(
          title: "macOS App Development",
          icon: "assets/images/mobile_dev.png",
          description: [
            "  Craft elegant and efficient macOS applications with Flutter's cross-platform magic.",
            "Capitalize on the Mac's unique user interface elements and functionalities.",
            "Ensure a delightful experience for users of Apple's desktop ecosystem."
          ]),
      ServiceModel(
          title: "Linux App Development:",
          icon: "assets/images/mobile_dev.png",
          description: [
            "  Embrace the open-source world with Flutter-based Linux applications.",
            " Expand your reach to the Linux user community while maintaining a polished user interface.",
            "Offer robust, cross-platform solutions that run smoothly on various Linux distributions."
          ]),
    ];
  }

  onTapService(ServiceModel service) {
    update(["services"]);
  }
}
