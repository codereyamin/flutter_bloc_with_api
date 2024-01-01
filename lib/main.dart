import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_api/app/routes/app_pages.dart';
import 'package:flutter_bloc_with_api/utils/themes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "flutter api app",
      theme: themeData,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
