import 'package:sollaris_web_flutter/exports.dart';
import 'package:sollaris_web_flutter/model/modules/export_module_models.dart';
import 'package:sollaris_web_flutter/repository/modules/modules_repository.dart';

class ModuleListController extends GetxController {
  ModuleListController() {
    loadModules();
  }

  final _repository = ModulesRepository();

  final modelFilterNotifier = TextEditingController();
  final providerFilterNotifier = ValueNotifier('Todos');
  final powerFilterNotifier = ValueNotifier('Todas');

  List<String> providerList = <String>[];
  List<String> powerList = <String>[];

  List<ModuleModel> moduleList = <ModuleModel>[];

  Future<void> loadModules() async {
    final response = await _repository.getAllModules();
    moduleList = List.from(response);

    update();
  }

  void clearFilter() {
    modelFilterNotifier.text = '';
    providerFilterNotifier.value = 'Todos';
    powerFilterNotifier.value = 'Todas';
  }

  void applyFilter() {}
}
