import 'package:code_symmetry/app/modules/home/controllers/home_controller.dart';
import 'package:code_symmetry/app/modules/home/src/Footer.dart';
import 'package:code_symmetry/app/modules/home/src/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart' as responsive;

import '../sections/contact_section.dart';
import '../sections/service_section.dart';
import '../src/Header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeView> with SingleTickerProviderStateMixin {
  final homeController = Get.find<HomeController>();

  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _opacityAnimation;
  bool isHovered = false;
  late ScrollController _controller;
  double pixels = 0.0;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000), // Animation duration
    );
    super.initState();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1, 0), // Start from right
      end: const Offset(0, 0), // Slide to the left
    ).animate(_animationController);

    _opacityAnimation = Tween<double>(
      begin: 0.0, // Start with zero opacity
      end: 1.0, // Gradually increase opacity
    ).animate(_animationController);

    // Trigger the animation when the page is loaded
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        body: CustomScrollView(
          controller: _controller,
          slivers: [
            Header(pixels: pixels),
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.width * 0.1),

                    width: double.infinity,
                    // height:
                    //     ResponsiveValue<double>(context, conditionalValues: [
                    //   responsive.Condition.largerThan(
                    //       name: TABLET, value: context.width * 0.3),
                    //   responsive.Condition.smallerThan(
                    //       name: TABLET, value: context.width + 300),
                    // ]).value,
                    child: ResponsiveRowColumn(
                      rowCrossAxisAlignment: CrossAxisAlignment.center,
                      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                      columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      layout: ResponsiveWidget.isSmallScreen(context)
                          ? ResponsiveRowColumnType.COLUMN
                          : ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                                  ResponsiveWidget.isSmallScreen(context)
                                      ? CrossAxisAlignment.center
                                      : CrossAxisAlignment.start,
                              children: [
                                // Transform(
                                //   transform: Matrix4.rotationZ(pi / 8)
                                //     ..translate(-180.0, 120.0),
                                //   child: Container(
                                //     height: 300.0,
                                //     width: context.width * 0.4,
                                //     decoration: BoxDecoration(
                                //       color: Theme.of(context).p,
                                //       borderRadius:
                                //           BorderRadius.circular(300.0),
                                //     ),
                                //   ),
                                // ),

                                Text(
                                  "Elevate Your Digital Vision with"
                                      .toUpperCase(),
                                  style: context.textTheme.displaySmall
                                      ?.copyWith(
                                          color: context
                                              .theme.colorScheme.secondary),
                                  textAlign:
                                      ResponsiveWidget.isLargeScreen(context)
                                          ? TextAlign.start
                                          : TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),

                                Text(
                                  "MITSET",
                                  style: context.textTheme.displayMedium
                                      ?.copyWith(
                                          color: context
                                              .theme.colorScheme.primary),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),

                                Text(homeController.homeDesc,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(width: 0.5)),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 32, vertical: 12),
                                      child: Text(
                                        "Get Started",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                              color: Colors.blue,
                                              letterSpacing: .5),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: Container(
                            child: FadeTransition(
                              opacity: _opacityAnimation,
                              child: SlideTransition(
                                  position: _slideAnimation,
                                  child: Image.asset("assets/images/iso.png")),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Ourservices(),
                  const ContactSection(),
                  const Footer()
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
