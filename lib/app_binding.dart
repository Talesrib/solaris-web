import 'package:sollaris_web_flutter/exports.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavigatorController>(NavigatorController());

    Get.put<ModuleListController>(ModuleListController());
  }
}