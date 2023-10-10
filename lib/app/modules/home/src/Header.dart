import 'package:code_symmetry/app/modules/home/controllers/home_controller.dart';
import 'package:code_symmetry/app/modules/home/src/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double? pixels;
  const Header({super.key, this.pixels});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: pixels == 0 ? 80 : 60,
      // expandedHeight: 200,
      titleSpacing: 0,
      leading: const FlutterLogo(),
      actions: [


        ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            onPressed: () {},
            child: const Text("Contact Us"))
      ],
      pinned: true,
      floating: false,
      // flexibleSpace: FlexibleSpaceBar(
      //   background: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         color: Colors.red,
      //         child: const Text("kkkk"),
      //       ),
      //     ],
      //   ),
      // ),

      title: AnimatedContainer(
        height: pixels == 0 ? 80 : 60,
        duration: const Duration(milliseconds: 300),
        child: GetBuilder<HomeController>(
            id: "navBar",
            builder: (controller) {
              return SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: controller.items
                      .asMap()
                      .entries
                      .map(
                        (entry) => Flexible(
                          child: NavBarItem(
                            text: entry.value,
                            index: entry.key,
                            isSelected: controller.selectedIndex == entry.key,
                            onTap: () {
                              controller.onNavTap(entry.key);
                            },
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            }),
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final String text;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: Container(
        child: SizedBox(
          width: 100,
          child: InkWell(
            onTap: widget.onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(widget.text,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: isHovered || widget.isSelected
                                      ? Colors.red
                                      : null,
                                )),
                  ),
                ),
                Expanded(
                  child: AnimatedSize(
                    alignment: Alignment.centerLeft,
                    duration: const Duration(milliseconds: 300),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: isHovered || widget.isSelected ? 2.0 : 0.0,
                            color: isHovered || widget.isSelected
                                ? Colors.red
                                : Colors.black,
                          ),
                        ),
                      ),
                      height: 10,
                      width: isHovered || widget.isSelected ? 60 : 0,
                    ),
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