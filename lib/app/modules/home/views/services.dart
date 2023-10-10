import 'package:code_symmetry/app/models/devservice_model.dart';
import 'package:code_symmetry/app/modules/home/controllers/serviceview_controller.dart';
import 'package:code_symmetry/app/modules/home/src/Header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../controllers/home_controller.dart';
import '../src/responsive_widget.dart';

class OurservicesDetailsPage extends GetView<ServiceViewController> {
  const OurservicesDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int itemsPerRow = ResponsiveWidget.isLargeScreen(context) ? 2 : 1;
    final int rowCount = (controller.servicesList.length / itemsPerRow).ceil();

    final items = controller.servicesList;
    return GetBuilder<ServiceViewController>(
        id: "services",
        builder: (_) {
          return Scaffold(
              body: CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              Header(
                pixels: controller.pixels,
              ),
              SliverToBoxAdapter(
                  child: Container(
                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                    ResponsiveRowColumn(
                      rowCrossAxisAlignment: CrossAxisAlignment.start,
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
                            
                            padding: EdgeInsets.symmetric(
                                horizontal: context.width * 0.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                                  ResponsiveWidget.isSmallScreen(context)
                                      ? CrossAxisAlignment.center
                                      : CrossAxisAlignment.start,
                              children: [
                       
                                  Text("AT MITSET",style: context
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                  
                                          color:context.theme.colorScheme.primary
                                        ),),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(controller.desc,
                                    style:
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                        
                                          color:context.theme.colorScheme.onPrimaryContainer
                                        
                                        
                                        )),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(width: 0.5)),
                                    onPressed: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 32, vertical: 12),
                                      child: Text("Let's Connect"),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          rowFit: FlexFit.tight,
                          child: Container(
                            child: Image.asset("assets/images/iso.png"),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: itemsPerRow == 2
                                ? (context.width * 0.2)-50
                                : context.width * 0.1,
                            vertical: 50),
                        child: Expanded(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.symmetric(vertical: 100),
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
                  
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: rowItems
                                      .map((model) =>
                                          ServiceDetailCar(model: model))
                                      .toList(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                                  ],
                                ),
                  )),
            ],
          ));
        });
  }
}

class ServiceDetailCar extends StatefulWidget {
  final ServiceModel model;
  const ServiceDetailCar({super.key, required this.model});

  @override
  State<ServiceDetailCar> createState() => _ServiceDetailCarState();
}

class _ServiceDetailCarState extends State<ServiceDetailCar> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
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
          duration: const Duration(milliseconds: 500),
          transform: Matrix4.identity()..scaled(isHovered ? 1.1 : 1.0),
          child: Card(
          
            color: context.theme.colorScheme.primary,
            shadowColor:
            
                                                             context.theme.colorScheme.primary,
            
            margin: const EdgeInsets.symmetric(horizontal: 16),
            elevation: isHovered ? 10 : null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveRowColumn(
                    rowCrossAxisAlignment: CrossAxisAlignment.start,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    rowSpacing: 16,
                    columnSpacing: 16,
                    layout: ResponsiveWidget.isSmallScreen(context)
                        ? ResponsiveRowColumnType.COLUMN
                        : ResponsiveRowColumnType.ROW,
                    children: [
                      ResponsiveRowColumnItem(
                        child: Image.asset(widget.model.icon!,
                            color:
                                        context.theme.colorScheme.onPrimary,
),
                      ),
                      ResponsiveRowColumnItem(
                        rowFlex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                              ResponsiveWidget.isSmallScreen(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.model.title.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold,color
                                  
          : context.theme.colorScheme.onPrimary,
                                  ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            ...widget.model.description!
                                .map(
                                  (e) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: CircleAvatar(
                                          backgroundColor:
                                                             context.theme.colorScheme.shadow,

                                          radius: 4,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8),
                                          child: Text(
                                            e,
                                            textAlign:
                                                ResponsiveWidget.isSmallScreen(
                                                        context)
                                                    ? TextAlign.center
                                                    : TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge?.copyWith(color
                                                
                                                
          : context.theme.colorScheme.onPrimary,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                                .toList()
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
