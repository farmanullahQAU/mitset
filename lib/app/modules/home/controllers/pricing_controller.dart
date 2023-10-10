import 'package:code_symmetry/app/models/pricing_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../models/devservice_model.dart';

class PricingViewController extends GetxController {
  PricingModel? currentPrice;

  late ScrollController scrollController;

  double pixels = 0.0;
  bool isHovered = false;

  String desc =
      "we understand that every project is unique, and that's why we offer flexible pricing options to meet your specific software development needs in Flutter. Whether you're a startup looking to launch your first app or an established enterprise seeking to expand your digital presence, we have pricing plans tailored to accommodate your budget and objectives. Our transparent pricing structure ensures that you'll only pay for the services and features you require, with no hidden costs. Explore our pricing tiers below to find the perfect package that fits your project's scope and scale. Get started today and let's turn your Flutter app ideas into reality.";

      String chose="< Choose the plan that suits your  \nneeds and budget >";
  @override
  void onInit() {
    initDevServices();

    currentPrice = pricingList.first;
    scrollController = ScrollController();
    scrollController.addListener(() {
      pixels = scrollController.position.pixels;
      update(["pricing"]);
    });
    super.onInit();
  }

  late List<PricingModel> pricingList;

  List<String> aditionalInfo=[


"All plans come with a 30-day satisfaction guarantee. If you're not happy with our services, you can cancel within 30 days for a full refund. ",

"You can upgrade or downgrade your plan at any time to match your evolving needs. ",

"Custom development requirements? Contact us to discuss a tailored solution. "
  ];

  void initDevServices() {
    pricingList = [
      PricingModel(
          title: "Basic Plan - Starter",
          icon: "assets/images/mobile_dev.png",
          price: "Price: \$499/mont",
          subtitle: "Small businesses and startups",
          features: [
            "Up to 20 hours of development per month",
            "Access to our basic set of Flutter developers",
            " Priority email support",
            "Monthly progress reports",
            "Limited to one platform (Android, iOS, or web)"
          ]),
      PricingModel(
          title: "Pro Plan - Growth",
          icon: "assets/images/mobile_dev.png",
          price: "Price: \$999/mont",
          subtitle: "Growing businesses and medium-sized enterprises",
          features: [
            " Up to 40 hours of development per month",
            "Dedicated team of Flutter developers",
            "Priority email and phone support",
            "Weekly progress reports",
            "Cross-platform development (Android, iOS, and web)",
            "UX/UI design consultation"
          ]),
      PricingModel(
          title: "Enterprise Plan - Custom Solutions",
          icon: "assets/images/mobile_dev.png",
          price: "Custom Quote",
          subtitle: "Large enterprises with complex requirements",
          features: [
            " Customized development hours and team size",
            "Dedicated project manager",
            "24/7 support",
            "Weekly progress reports with in-depth analytics",
            "Cross-platform development (Android, iOS, web, desktop, macOS, Linux)",
            " Full-stack development capabilities",
            "Priority access to emerging technologies and beta features"
          ]),
    ];
  }

  onTapService(PricingModel service) {
    currentPrice = service;

    update(["pricing"]);
  }
}
