import 'package:sollaris_web_flutter/controller/clients/client_list_controller.dart';
import 'package:sollaris_web_flutter/controller/clients/client_post_controller.dart';
import 'package:sollaris_web_flutter/exports.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavigatorController>(NavigatorController());

    Get.put<ModuleListController>(ModuleListController());

    Get.put<ClientListController>(ClientListController());
    Get.put<ClientPostController>(ClientPostController());
  }
}
