import 'package:code_symmetry/app/models/devservice_model.dart';
import 'package:code_symmetry/app/modules/home/views/pricing.dart';
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
    String homeDesc= "Your Trusted and Reliable Partner in the Journey of Transforming Creative Ideas and Innovative Concepts into Exceptional and High-Quality Software Solutions.";

  void initDevServices() {
    // servicesList = [
    //   ServiceModel(
    //     icon: "assets/images/mobile_dev.png",
    //     title: "Android & iOS",
    //     subtitle: "Native-quality mobile apps.",
    //   ),
    //   ServiceModel(
    //     title: "Web apps",
    //     subtitle: "Responsive, cross-platform web applications.",
    //     icon: "assets/images/web_dev.png",
    //   ),
    //   ServiceModel(
    //       title: "Desktop",
    //       subtitle: "Windows, macOS, and Linux solutions.",
    //       icon: "assets/images/web_dev.png"),
    //   ServiceModel(
    //       title: "macOS",
    //       subtitle: "Elegant applications for Apple's desktop",
    //       icon: "assets/images/mobile_dev.png"),
    //   ServiceModel(
    //       title: "Linux",
    //       subtitle: "Open-source, cross-platform software.",
    //       icon: "assets/images/mobile_dev.png"),
    // ];


    servicesList = [
  ServiceModel(
    icon: "assets/images/mobile_dev.png",
    title: "Android & iOS",
    subtitle: "Native-quality mobile apps for Android and iOS platforms. We provide cutting-edge development for mobile applications, ensuring a seamless user experience.",
  ),
  ServiceModel(
    title: "Web apps",
    subtitle: "Responsive, cross-platform web applications. Our web apps are designed to work seamlessly across all devices and platforms, offering an intuitive user interface and powerful functionality.",
    icon: "assets/images/web_dev.png",
  ),
  ServiceModel(
    title: "Desktop",
    subtitle: "Windows, macOS, and Linux solutions. Our desktop applications are tailored to meet your specific needs on all major operating systems, ensuring compatibility and performance.",
    icon: "assets/images/web_dev.png",
  ),
  ServiceModel(
    title: "macOS",
    subtitle: "Elegant applications for Apple's desktop. We create elegant and user-friendly applications exclusively for macOS, providing a premium user experience.",
    icon: "assets/images/mobile_dev.png",
  ),
  ServiceModel(
    title: "Linux",
    subtitle: "Open-source, cross-platform software. Our Linux software solutions are open-source and designed to run on various distributions, promoting flexibility and cost-effectiveness.",
    icon: "assets/images/mobile_dev.png",
  ),
];

  }

  onTapService(ServiceModel service) {
    currentService = service;

    update(["services"]);
  }

  void onNavTap(int key)async {
    if (key == 2) {
      // Get.toNamed(Routes.PRICING);
      Get.to(()=>PricingPageView());
    }
    selectedIndex = key;
    update(["navBar"]);

    scrollToPage(key);

  }

  scrollToPage(int index)async{


    if(index==0){

        await Scrollable.ensureVisible(homeKey!.currentContext!,duration: Duration(milliseconds: 1500));
    }
     else if(index==1){

        await Scrollable.ensureVisible(servicesKey!.currentContext!,duration: Duration(milliseconds: 1500));
    } 

    else if(index==11){
        await Scrollable.ensureVisible(contactKey!.currentContext!,duration: Duration(milliseconds: 1500));


    }
    else if(index==3)
        await Scrollable.ensureVisible(aboutKey!.currentContext!,duration: Duration(milliseconds: 1500));
    
  }
}
