import 'package:code_symmetry/app/models/devservice_model.dart';
import 'package:code_symmetry/app/modules/home/controllers/home_controller.dart';
import 'package:code_symmetry/app/modules/home/src/responsive_widget.dart';
import 'package:code_symmetry/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart' as responsive;

class Ourservices extends GetView<HomeController> {
  const Ourservices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int itemsPerRow = ResponsiveWidget.isSmallScreen(context)
        ? 1
        : ResponsiveWidget.isMediumScreen(context)
            ? 1
            : 3;
    final int rowCount = (controller.servicesList.length / itemsPerRow).ceil();

    final items = controller.servicesList;
    return GetBuilder<HomeController>(
        key: controller.servicesKey,
        id: "services",
        builder: (_) {
          return Container(
            color: context.theme.colorScheme.secondaryContainer,
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
             Align(

              alignment: Alignment.center,
               child: Column(
                 children: [
                         Text(
                                      "OUR SERVICES",
                                      style: GoogleFonts.oswald(


                                        textStyle: context.textTheme.displayMedium
                                          ?.copyWith(
                                              color: context
                                                  .theme.colorScheme.primary)
                                      ),
                                    ),

                                    SizedBox(height: 16,),
                   Text(
                                            "Explore our expertise in Flutter app development"
                                               ,
                                            style: GoogleFonts.lato(
             
                                             textStyle: context.textTheme.titleLarge
                                                ?.copyWith(
                                                    color: context
                                                        .theme.colorScheme.secondary), 
                                            ),
                                            textAlign:
                                                ResponsiveWidget.isLargeScreen(context)
                                                    ? TextAlign.end
                                                    : TextAlign.center,
                                          ),

                                          Container(
                                            
                                            decoration: BoxDecoration(
                                              color: context.theme.colorScheme.primary,
                                              
                                              borderRadius: BorderRadius.circular(0)),
                                            
                                            height: 10,width: context.width*0.3,margin: EdgeInsets.symmetric(vertical: 10),)

                 ],
               ),
             ),



                ResponsiveRowColumn(
                  layout: ResponsiveWidget.isSmallScreen(context)
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowCrossAxisAlignment: CrossAxisAlignment.start,
                  
                  rowSpacing: 0,
                  children: [
                    
                    ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: (context.width * 0.1) + 50, vertical: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ListView.builder(
                                padding: const EdgeInsets.symmetric(vertical: 0),
                                shrinkWrap: true,
                                itemCount: rowCount,
                                itemBuilder: (context, rowIndex) {
                                  final startIndex = rowIndex * itemsPerRow;
                                  final endIndex =
                                      (startIndex + itemsPerRow) <= items.length
                                          ? (startIndex + itemsPerRow)
                                          : items.length;
          
                                  final rowItems =
                                      items.sublist(startIndex, endIndex);
          
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: rowItems
                                        .map((model) => _ServicesCard(model: model))
                                        .toList(),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              


                                                  Text(
                                            "Unlock the full potential of Flutter with MITSET.".toUpperCase()
                                               ,
                                      style: GoogleFonts.lato(
             
                                             textStyle: context.textTheme.titleLarge
                                                ?.copyWith(
                                                    color: context
                                                        .theme.colorScheme.primary), 
                                            ),
                                            textAlign:
                                                 TextAlign.center,
                                          ),
                              const SizedBox(
                                height: 16,
                              ),
                         
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 60, vertical: 20),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25))),
                                  onPressed: () {
                                    Get.toNamed(Routes.SERVICE);
                                  },
                                  child: const Text("Explore")),
                            ],
                          ),
                        )),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

class _ServicesCard extends StatefulWidget {
  final ServiceModel model;

  const _ServicesCard({required this.model});

  @override
  State<_ServicesCard> createState() => __ServicesCardState();
}

class __ServicesCardState extends State<_ServicesCard> {
  bool isHovered = false;
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: ResponsiveWidget.isSmallScreen(context)
          ? FlexFit.tight
          : FlexFit.tight,
      child: SizedBox(
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHovered = false;
            });
          },
          child: AnimatedContainer(

          
            duration: const Duration(milliseconds: 400),
            transform: Matrix4.identity()
              ..scale(controller.isHovered ? 1.1 : 1.0),
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(

      
              boxShadow: isHovered
                  ? [
                      BoxShadow(
                        color: context.theme.colorScheme.shadow,
                        blurRadius: 15,
                        spreadRadius: 5,
                        offset: const Offset(0, 1),
                      )
                    ]
                  : [],
            ),
            child: Card(
              color: context.theme.colorScheme.secondaryContainer,

              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              margin: EdgeInsets.zero,
              elevation: isHovered ? 1 : 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(widget.model.icon!,
                        color: context.theme.colorScheme.primary),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.model.title,
                      style:GoogleFonts.oswald(
textStyle:
                         context.textTheme.titleLarge?.copyWith(
                          color: context.theme.colorScheme.onSecondaryContainer),
                      )
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.model.subtitle!,

                        style: GoogleFonts.openSans(

                    textStyle:     context.textTheme.bodyLarge?.copyWith(
                          color: context.theme.colorScheme.onSecondaryContainer),
                                       
                                            ),
                    
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
