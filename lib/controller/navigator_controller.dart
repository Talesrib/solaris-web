import 'package:sollaris_web_flutter/exports.dart';

class NavigatorController extends GetxController {
  String _pageSelected = 'orders_page';

  void setRoute(String newRoute) {
    _pageSelected = newRoute;
    update();
  }

  String getRoute() {
    return _pageSelected;
  }
}
