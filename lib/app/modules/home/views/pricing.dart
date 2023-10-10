import 'package:code_symmetry/app/models/devservice_model.dart';
import 'package:code_symmetry/app/models/pricing_model.dart';
import 'package:code_symmetry/app/modules/home/controllers/pricing_controller.dart';
import 'package:code_symmetry/app/modules/home/controllers/serviceview_controller.dart';
import 'package:code_symmetry/app/modules/home/src/Header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../src/responsive_widget.dart';

class PricingPageView extends GetView<PricingViewController> {
  const PricingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int itemsPerRow = ResponsiveWidget.isSmallScreen(context)
        ? 1
        : ResponsiveWidget.isMediumScreen(context)
            ? 2
            : 3;
    final int rowCount = (controller.pricingList.length / itemsPerRow).ceil();

    final items = controller.pricingList;
    return GetBuilder<PricingViewController>(
        id: "pricing",
        builder: (_) {
          return Scaffold(
              body: CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              Header(
                pixels: controller.pixels,
              ),
              SliverToBoxAdapter(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  ResponsiveRowColumn(
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
                                      context.textTheme.bodyLarge?.copyWith(color: context.theme.colorScheme.onSecondaryContainer)),
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
                 
           Align(
            alignment: Alignment.center,
             child: Padding(
              padding: EdgeInsets.symmetric(
                              horizontal: context.width * 0.1),
               child: Text(controller.chose.toUpperCase(),
               
               textAlign: TextAlign.center,
               style: context
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            



                        
                                            color:context.theme.colorScheme.primary
                                          ),),
             ),
           ),
                 
                 
                 
                  Container(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: itemsPerRow == 3
                              ? (context.width * 0.1) + 50
                              : itemsPerRow == 2
                                  ? 10
                                  : 32,
                          vertical: 0),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 100,
                        ),
                        shrinkWrap: true,
                        itemCount: rowCount,
                        itemBuilder: (context, rowIndex) {
                          final startIndex = rowIndex * itemsPerRow;
                          final endIndex =
                              (startIndex + itemsPerRow) <= items.length
                                  ? (startIndex + itemsPerRow)
                                  : items.length;

                          final rowItems = items.sublist(startIndex, endIndex);

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: rowItems
                                  .map((model) => PricingCard(model: model))
                                  .toList(),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              )),
            ],
          ));
        });
  }
}

class PricingCard extends StatefulWidget {
  final PricingModel model;
  const PricingCard({super.key, required this.model});

  @override
  State<PricingCard> createState() => _PricingCardState();
}

class _PricingCardState extends State<PricingCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    double top = ResponsiveWidget.isSmallScreen(context) ? 50 : 50;
    double bottom = ResponsiveWidget.isSmallScreen(context) ? 50 : 100;
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
            color: context.theme.colorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            elevation: isHovered ? 10 : null,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration:  BoxDecoration(
                      color: context.theme.colorScheme.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          widget.model.title!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold,color: context.theme.colorScheme.onPrimary),
                        ),
                        Text(
                          widget.model.price,
                          style: context
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold,color: context.theme.colorScheme.onPrimary),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16, right: 16, top: top, bottom: bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      ...widget.model.features!
                          .map((e) => Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          context.theme.shadowColor,
                                      radius: 4,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Flexible(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8),
                                        child: Text(
                                          e,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge?.copyWith(color:context.theme.colorScheme.onSecondaryContainer),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                          .toList()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
