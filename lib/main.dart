import 'package:codingjunior/app/presentation/controllers/dashboard_controller.dart';
import 'package:codingjunior/app/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dashboard App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(DashboardController());
      }),
      home: DashboardView(),
    );
  }
}
