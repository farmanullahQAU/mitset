import 'dart:math';

import 'package:code_symmetry/app/modules/home/controllers/home_controller.dart';
import 'package:code_symmetry/app/modules/home/src/Footer.dart';
import 'package:code_symmetry/app/modules/home/src/responsive_widget.dart';
import 'package:code_symmetry/app/modules/home/views/about_us.dart';
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
            Header(pixels: pixels,onTap: (int index){


            },),
            SliverToBoxAdapter(
              key: homeController.homeKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: context.width*0.1,vertical: 50),
                      
                      child: Column(
                        children: [
                          ResponsiveRowColumn(
                            rowCrossAxisAlignment: CrossAxisAlignment.center,
                            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                            columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
                            columnCrossAxisAlignment: CrossAxisAlignment.center,
                            layout: ResponsiveWidget.isLargeScreen(context)
                                ? ResponsiveRowColumnType.ROW
                                : ResponsiveRowColumnType.COLUMN,
                            children: [
                              ResponsiveRowColumnItem(
                                rowFlex: 1,
                                rowFit: FlexFit.tight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      ResponsiveWidget.isSmallScreen(context)
                                          ? CrossAxisAlignment.center
                                          : CrossAxisAlignment.start,
                                  children: [
                               
                    
                                    Text(
                                      "Elevate Your Digital Vision with"
                                         ,
                                      style: GoogleFonts.oswald(

                                       textStyle: context.textTheme.displayMedium
                                          ?.copyWith(
                                              color: context
                                                  .theme.colorScheme.secondary), 
                                      ),
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
                                      style: GoogleFonts.oswald(


                                        textStyle: context.textTheme.displayMedium
                                          ?.copyWith(
                                              color: context
                                                  .theme.colorScheme.primary)
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                    
                          
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    OutlinedButton(
                                       
                                        onPressed: () {
homeController.scrollToPage(11);

                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 32, vertical: 12),
                                          child: Text(
                                            "Get Started",
                                            style: GoogleFonts.lato(
                                       
                                            ),
                                          ),
                                        ))
                                  ],
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
                                        child: Image.asset("assets/images/home_banner.png",height: 400,)),
                                  ),
                                ),
                              )
                            ],
                          ),

                           Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 
                             
                             ResponsiveWidget.isLargeScreen(context)?
                             
                             context.width*0.2:16,vertical: 50),
                             child: Text(
                                  homeController.homeDesc
                                        ,
                                       style: GoogleFonts.lato(


                                         textStyle: context.textTheme.titleLarge
                                            ?.copyWith(

                                                color: context
                                                    .theme.colorScheme.secondary),
                                       ),
                                        textAlign:TextAlign.center,
                                      ),
                           ),
                        ],
                      ),
                    ),
                  ),
                   Ourservices(key:homeController.servicesKey,),
                   ContactSection(key: homeController.contactKey,),
AboutUsPage(key:homeController.aboutKey,),
                  
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
