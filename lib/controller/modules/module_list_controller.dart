import 'package:sollaris_web_flutter/exports.dart';

class ModuleListController extends GetxController {
  final modelFilterNotifier = TextEditingController();
  final providerFilterNotifier = ValueNotifier('Todos');
  final powerFilterNotifier = ValueNotifier('Todas');

  List<String> providerList = <String>[];
  List<String> powerList = <String>[];

  List<String> moduleList = <String>[];

  void init() {
    
  }

  void clearFilter() {
    modelFilterNotifier.text = '';
    providerFilterNotifier.value = 'Todos';
    powerFilterNotifier.value = 'Todas';
  }

  void applyFilter() {

  }
}
