import 'package:code_symmetry/app/color_schemes.g.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.dark,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 800, name: MOBILE),
          const Breakpoint(start: 801, end: 1200, name: TABLET),
          const Breakpoint(start: 1201, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      title: "code symmetry",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
